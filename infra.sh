STACK_NAME="MythicalMysfits"
TEMPLATE=./infra/cloudformation.yml

if [ $1 == 'create' ]
then
  aws cloudformation create-stack --stack-name $STACK_NAME --template-body file://$TEMPLATE
elif [ $1 == 'delete' ]
then
  aws cloudformation delete-stack --stack-name $STACK_NAME
elif [ $1 == 'validate' ]
then
  aws cloudformation validate-template --template-body file://$TEMPLATE
else
  echo "Unsupported command '$1'"
  exit 1
fi
