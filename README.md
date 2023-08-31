[![Python application test with Github Actions](https://github.com/PendingUsername/Microservices/actions/workflows/devops.yml/badge.svg)](https://github.com/PendingUsername/Microservices/actions/workflows/devops.yml)
![Python application test with Github Actions](https://codebuild.us-east-1.amazonaws.com/badges?uuid=eyJlbmNyeXB0ZWREYXRhIjoiU3ByeEZPOHh3R2VJTGtJamJsaTE2bHIvSFh2dnVUcDcrd284ZTVDSkVsai90UlV2OEZ1Ti9rcVJEY2F1VkRuTDBsUjFJQ1hZaEU1ZUIyMzRseXJIQ05BPSIsIml2UGFyYW1ldGVyU3BlYyI6ImZPYUxNSGlFRWpicGZZaUwiLCJtYXRlcmlhbFNldFNlcmlhbCI6MX0%3D&branch=main)
# Microservices
Real world AWS Microservices
1. Create a PVE (virtualenv ~/.venv)
2. Create empty files: Makefile, requirements.txt, main.py, Dockerfile, 'mylib' 
3. Setup makefile
4. Setup CI, check codes for issues
5. Build cli using Python Fire library './cli-fire.py --help' -- logic test
-------
Some notes: 

Please use the format for "buildspec.yml" provided by aws.
Refer to my YML file for correct setup. 

The format should look like this:

# Sample Buildspec YAML Configuration

This is a sample configuration for a buildspec.yaml file used in AWS CodeBuild. It outlines various phases and commands that can be executed during the build process.

```yaml
#env:
  #variables:
     # key: "value"
     # key: "value"
  #parameter-store:
     # key: "value"
     # key: "value"
  #secrets-manager:
     # key: secret-id:json-key:version-stage:version-id
     # key: secret-id:json-key:version-stage:version-id
  #exported-variables:
     # - variable
     # - variable
  #git-credential-helper: yes
#batch:
  #fast-fail: true
  #build-list:
  #build-matrix:
  #build-graph:

phases:
  #install:
    #runtime-versions:
      # name: version
      # name: version
    #commands:
      # - command
      # - command

  #pre_build:
    #commands:
      # - command
      # - command

  build:
    commands:
      # - command
      # - command

  #post_build:
    #commands:
      # - command
      # - command

#reports:
  #report-name-or-arn:
    #files:
      # - location
      # - location
    #base-directory: location
    #discard-paths: yes
    #file-format: JunitXml | CucumberJson

#artifacts:
  #files:
    # - location
    # - location
  #name: $(date +%Y-%m-%d)
  #discard-paths: yes
  #base-directory: location

#cache:
  #paths:
    # - paths
