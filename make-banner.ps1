Add-Type -AssemblyName System.Drawing

$W = 1280; $H = 320
$bmp = New-Object System.Drawing.Bitmap($W, $H)
$g = [System.Drawing.Graphics]::FromImage($bmp)
$g.SmoothingMode = 'AntiAlias'
$g.TextRenderingHint = 'ClearTypeGridFit'

$rect = New-Object System.Drawing.Rectangle(0, 0, $W, $H)
$c1 = [System.Drawing.ColorTranslator]::FromHtml('#0d1117')
$c2 = [System.Drawing.ColorTranslator]::FromHtml('#1b2333')
$bg = New-Object System.Drawing.Drawing2D.LinearGradientBrush($rect, $c1, $c2, 25.0)
$g.FillRectangle($bg, $rect)

$grid = New-Object System.Drawing.Pen ([System.Drawing.Color]::FromArgb(16, 255, 255, 255)), 1
for ($x = 0; $x -lt $W; $x += 40) { $g.DrawLine($grid, $x, 0, $x, $H) }
for ($y = 0; $y -lt $H; $y += 40) { $g.DrawLine($grid, 0, $y, $W, $y) }

$accent = [System.Drawing.ColorTranslator]::FromHtml('#6366F1')
$accBrush = New-Object System.Drawing.SolidBrush $accent
$g.FillRectangle($accBrush, 0, 0, 10, $H)

$fName = New-Object System.Drawing.Font 'Segoe UI', 82, ([System.Drawing.FontStyle]::Bold)
$fRole = New-Object System.Drawing.Font 'Segoe UI', 30, ([System.Drawing.FontStyle]::Regular)
$fSub = New-Object System.Drawing.Font 'Consolas', 20, ([System.Drawing.FontStyle]::Regular)

$white = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(235, 240, 246))
$dim = New-Object System.Drawing.SolidBrush ([System.Drawing.Color]::FromArgb(150, 160, 175))

$firstWidth = $g.MeasureString('Mehedi', $fName).Width
$g.DrawString('Mehedi', $fName, $white, 52, 50)
$g.DrawString('Hasan', $fName, $accBrush, (52 + $firstWidth + 6), 50)
$g.DrawString('Cloud & DevOps Engineer', $fRole, $dim, 60, 182)
$g.DrawString('AWS  /  Terraform  /  Python  /  Java', $fSub, $accBrush, 62, 240)

$out = Join-Path $PSScriptRoot 'banner.png'
$bmp.Save($out, [System.Drawing.Imaging.ImageFormat]::Png)
$g.Dispose(); $bmp.Dispose()

Write-Host "saved $out ($([math]::Round((Get-Item $out).Length / 1KB, 0)) KB)"
