<div align="center">
  <img src="https://github.com/mehedi-hasan-2426/mehedi-hasan-2426/blob/main/banner.png?raw=true" alt="Mehedi Hasan - Cloud and DevOps Engineer" />
</div>

I work on AWS infrastructure in an enterprise DevOps team. Most of what I know came from
building something small and finishing it, so this profile is written the way I spend my
day.

```hcl
resource "human" "mehedi" {
  role     = "Software Developer Trainee"
  team     = "Enterprise DevOps"
  based_in = "Germany"

  currently {
    certifying = "AWS Cloud Practitioner"
    building   = "small tools for problems I actually run into day to day"
    learning   = "Java, currently by writing a REST API with it"
  }

  lifecycle {
    # Finish the small thing. Then start the next small thing.
    prevent_destroy = true
  }
}
```

> [!IMPORTANT]
> **Nimbus is live** at **[ccp.mehedihasanrahib.de](https://ccp.mehedihasanrahib.de)** —
> 987 AWS Cloud Practitioner practice questions.

## What working in a DevOps team changed

```diff
# how I ship
- deploy = "click through the AWS console until it works"
+ deploy = "terraform apply, reviewed in a pull request"

# how I write terraform
- structure = "one long main.tf per project"
+ structure = "modules with inputs, outputs and a README"

# how I handle secrets
- secrets = "a config file I remembered to gitignore"
+ secrets = "environment variables, push protection on every repo"

# how I know it works
- testing = "it ran on my machine"
+ testing = "CI has to pass before anything merges"

Plan: 0 to add, 4 to change, 0 to destroy.
```

## Stack

```hcl
locals {
  infrastructure = ["AWS", "Terraform", "Docker", "Elastic Stack", "Linux"]
  languages      = ["Python", "Java", "PowerShell", "Bash"]
  shipping       = ["GitHub Actions", "Hugo", "Vercel"]
}
```

## Built with Terraform

| Repository | Provisions |
| :--- | :--- |
| **[terraform-brewery-api](https://github.com/mehedi-hasan-2426/terraform-brewery-api)** | `Lambda` + API over the Open Brewery DB |
| **[triggering-aws-lambda-from-amazon-sqs](https://github.com/mehedi-hasan-2426/triggering-aws-lambda-from-amazon-sqs)** | `Lambda` triggered by an `SQS` queue |
| **[terraform-asg-elb](https://github.com/mehedi-hasan-2426/terraform-asg-elb)** | `Auto Scaling Group` behind an `ELB` |
| **[terraform-win-ec2](https://github.com/mehedi-hasan-2426/terraform-win-ec2)** | Windows `EC2` provisioning |

## Built because I wanted it to exist

| Repository | What it does |
| :--- | :--- |
| **[aws-ccp-trainer](https://github.com/mehedi-hasan-2426/aws-ccp-trainer)** | **Nimbus** — 987 questions, every option explained. Zero dependencies, strict CSP, 10 security checks. **[Live ↗](https://ccp.mehedihasanrahib.de)** |
| **[Worder](https://github.com/mehedi-hasan-2426/Worder)** | German vocabulary trainer, built because I needed one |
| **[tech-learning-tracker](https://github.com/mehedi-hasan-2426/tech-learning-tracker)** | Local-first tracker for what I have actually read |
| **[books-api](https://github.com/mehedi-hasan-2426/books-api)** | REST API design, done properly rather than quickly |
| **[team-availability-planner](https://github.com/mehedi-hasan-2426/team-availability-planner)** | Desktop planner in `PyQt6` |

> [!NOTE]
> Every repository above is mine and finished enough to run. No forks, no tutorial clones.

## State

<div align="center">
  <img src="https://github-profile-summary-cards.vercel.app/api/cards/profile-details?username=mehedi-hasan-2426&theme=github_dark" width="740" alt="GitHub activity summary" />
</div>

## Outputs

```hcl
output "find_me" {
  value = {
    github = "https://github.com/mehedi-hasan-2426"
    live   = "https://ccp.mehedihasanrahib.de"
  }
}
```

<!-- Add when ready, then delete this comment:
    linkedin = "https://linkedin.com/in/YOUR-HANDLE"
    email    = "YOUR-PERSONAL-EMAIL"
-->
