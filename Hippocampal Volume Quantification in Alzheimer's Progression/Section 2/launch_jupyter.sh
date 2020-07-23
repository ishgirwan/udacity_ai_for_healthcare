PORT_NUMBER=3001
lsof -i tcp:${PORT_NUMBER} | awk 'NR!=1 {print $2}' | xargs kill > /dev/null 2>&1
jupyter notebook --port=3001 --ip=0.0.0.0 --allow-root --NotebookApp.token='' &
echo "*********************************************************************************"
echo "*                                                                               *"
echo "*      Your Jupyter Notebook will be accessible at the following address.       *"
echo "*     Please copy the link below and open it in a new tab in your browser:      *"
echo "*                                                                               *"
echo "*                                                                               *"
echo "*   https://$WORKSPACEID-3001.$WORKSPACEDOMAIN    *"
echo "*                                                                               *"
echo "*                                                                               *"
echo "*   Your Notebook is running as a background process in this terminal. To stop  *"
echo "*   your Notebook, please close this terminal tab.                              *"
