terraform import module.dns.cloudflare_record.cesarb_dev_A_cesarb_dev b8991a88e1b412fa8a94e7e2808b0cfa/8ca9575c51c97bed8b683ecf71d44ba1
terraform import module.dns.cloudflare_record.cesarb_dev_A_grafana b8991a88e1b412fa8a94e7e2808b0cfa/1b97ce6faa4d750a597bd5090a1635b4
terraform import module.dns.cloudflare_record.cesarb_dev_A_nginx b8991a88e1b412fa8a94e7e2808b0cfa/20c7d5e159a5680afd44a2fd751aaa80
terraform import module.dns.cloudflare_record.cesarb_dev_A_traefik b8991a88e1b412fa8a94e7e2808b0cfa/dfe473d6987628159f101649563ed5b7
terraform import module.dns.cloudflare_record.cesarb_dev_CNAME_fm1__domainkey b8991a88e1b412fa8a94e7e2808b0cfa/a888be5f99dc0542c7ba607d5d015c49
terraform import module.dns.cloudflare_record.cesarb_dev_CNAME_fm2__domainkey b8991a88e1b412fa8a94e7e2808b0cfa/6ed8eff889cc6ddad038ba861a072ca0
terraform import module.dns.cloudflare_record.cesarb_dev_CNAME_fm3__domainkey b8991a88e1b412fa8a94e7e2808b0cfa/17fcfd866abcfda4d929a232545312db
terraform import module.dns.cloudflare_record.cesarb_dev_CNAME_www b8991a88e1b412fa8a94e7e2808b0cfa/c84288aba3b7b75784b2219641019805
terraform import module.dns.cloudflare_record.cesarb_dev_MX_in2_smt b8991a88e1b412fa8a94e7e2808b0cfa/07c458dd80ba311f67876ee1d980b6c1
terraform import module.dns.cloudflare_record.cesarb_dev_MX_in1_smt b8991a88e1b412fa8a94e7e2808b0cfa/269fafeeb2b4f7688364d96f37abab9e
terraform import module.dns.cloudflare_record.cesarb_dev_MX_cesarb_dev_in2_smtp b8991a88e1b412fa8a94e7e2808b0cfa/7694ee28f6ca33ed627de232f9932683
terraform import module.dns.cloudflare_record.cesarb_dev_MX_cesarb_dev_in1_smtp b8991a88e1b412fa8a94e7e2808b0cfa/50f8cbb1eda8d5bba76f6cad1cc77ce4
terraform import module.dns.cloudflare_record.cesarb_dev_TXT_cesarb_dev b8991a88e1b412fa8a94e7e2808b0cfa/cfbed49f4751235b1c42d327f93446d4

################
################
################
################
terraform state rm module.dns.cloudflare_record.cesarb_dev_A_cesarb_dev
terraform state rm module.dns.cloudflare_record.cesarb_dev_A_grafana
terraform state rm module.dns.cloudflare_record.cesarb_dev_A_nginx
terraform state rm module.dns.cloudflare_record.cesarb_dev_A_traefik
terraform state rm module.dns.cloudflare_record.cesarb_dev_CNAME_fm1__domainkey
terraform state rm module.dns.cloudflare_record.cesarb_dev_CNAME_fm2__domainkey
terraform state rm module.dns.cloudflare_record.cesarb_dev_CNAME_fm3__domainkey
terraform state rm module.dns.cloudflare_record.cesarb_dev_CNAME_www
terraform state rm module.dns.cloudflare_record.cesarb_dev_MX_in2_smt
terraform state rm module.dns.cloudflare_record.cesarb_dev_MX_in1_smt
terraform state rm module.dns.cloudflare_record.cesarb_dev_MX_cesarb_dev_in2_smtp
terraform state rm module.dns.cloudflare_record.cesarb_dev_MX_cesarb_dev_in1_smtp
terraform state rm module.dns.cloudflare_record.cesarb_dev_TXT_cesarb_dev
