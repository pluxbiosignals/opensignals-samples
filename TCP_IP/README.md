# TCP-IP integration in OpenSignals

The **TCP/IP** (Transmission Control Protocol / Internet Protocol) module of the **OpenSignals (r)evolution** software is aimed 
to facilitate the support and data exchange between **3rd party** and the **OpenSignals (r)evolution** software.

This module aims to show how both **OpenSignals** (server side) and the **3rd party software** (client side) can be easily configured.

## Configure OpenSignals
OpenSignals needs to be firstly configured. To do so, open **OpenSignals**, go to the settings menu and select the Integration 
tab. Then, click in the **TCP-IP** checkbox and write the port in which you want to communicate. 

After this, **OpenSignals** is ready to communicate and waiting for connections.

## Configure the client side

In order to set the client side, run the code file to **tcp_ip_client_sample.py** (on **Python 2.7**) or the **tcp_ip_client_sample_py3.py** (on **Python 3.X**). This will open a menu which will guide you on the available commands.

Please, note that the **IP** used to establish the connection in the client side must be the **IP** from the computer running 
**OpenSignals** (`127.0.0.1` or **localhost**, if **OpenSignals** and the client are running in the same computer), and the port must 
be that specified in OpenSignals.