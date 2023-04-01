import os

def apply(config, args):
    basename = 'AeroGauge'
    if os.path.exists(f'build/{basename}.us.bin'):
        version = 'us'
    elif os.path.exists(f'build/{basename}.eu.bin'):
        version = 'eu'
    else:
        version = 'jpkd'

    config['baseimg'] = f'baserom.us.z64'
    config['myimg'] = f'build/{basename}.{version}.z64'
    config['mapfile'] = f'build/{basename}.{version}.map'
    config['source_directories'] = ['src', 'include']
