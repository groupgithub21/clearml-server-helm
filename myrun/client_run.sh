conda create --name clearml_env python=3.8
pip install clearml
#Get user credientials from ML Tracking server
clearml-init

clearml-task --project server1 --name lightbgmwithrequirements --script train_with_lightbgm.py --queue default --requirements requirements.txt

