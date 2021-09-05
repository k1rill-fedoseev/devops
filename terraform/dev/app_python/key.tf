resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDdE99MCeG04gbOgv93vbK3c3a6UafhrYSMh2Lf2V2gbKstBQRR0cDc520LQlwg628HtGK7di3ulqF+TJ7O8f28JeFNwL3dOoEFgXtG2b6N4+tdfHKx/X2UifZ1ZdlCH8SCkhxJB+BDsakgrjVa/fXkNVp0BVehYyFmDCvj7obQJBRK83gOw62R0eHj3ZyVXWMDMaJAhvxb2JOA1Y9EVbYs6ubp+yT8hoXmp6J3vSUCrRlMRHLdh8uRqVmXoDgLHAlR22kLvvPq214SDp9hJ7vOe8kGcHUZ87NHHBEDqwzXG1izZc3EVGPJ7ErR6u20KERWEIb/O2WfQ7yny5+6JWr//wI48GL9GqcpTfufn57408FdTQOp4Ms2FV6ZwoztUNca1M77W3tjLyWJGbJZaa2/pYRWv91/SpL6xC3AStdlu3+1BqWOF5LiXk44yXxBdIAIERyUI6Y1HxOF71hhFaKI9EPqn8rBNgaU4sxO+ddqnHkwtDNV/TRwBPyxSM3bqMc= ubuntu"
}
