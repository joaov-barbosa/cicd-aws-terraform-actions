#!/bin/bash
aws configure set aws_access_key_id ${{ secrets.AWS_ACCESS_KEY_ID }} --profile default
aws configure set aws_secret_access_key ${{ secrets.AWS_SECRET_ACCESS_KEY }} --profile default
aws configure set region ${{ vars.AWS_REGION }} --profile default
