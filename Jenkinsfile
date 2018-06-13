node ('docker2'){
    
    stage ('Checkout SCM') {
        checkout scm        
    }
    
    stage ('Black Duck Scan') {
       //hub_scan bomUpdateMaximumWaitTime: '5', cleanupOnSuccessfulScan: true, codeLocationName: 'Jenkins/Super-Node2.0', deletePreviousCodeLocations: false, dryRun: false, excludePatterns: [[exclusionPattern: '']], hubProjectName: 'Super-Node-JS', hubProjectVersion: '2.0', hubVersionDist: 'EXTERNAL', hubVersionPhase: 'PLANNING', projectLevelAdjustments: true, scanMemory: '4096', scans: [[scanTarget: '']], shouldGenerateHubReport: true, unmapPreviousCodeLocations: false
      sh"""
        bash <(curl -s https://blackducksoftware.github.io/hub-detect/hub-detect.sh) --blackduck.hub.url="https://bduck01.core.rcsops.com" --blackduck.hub.username=jenkins_builduser --blackduck.hub.password=52n1A6$kyod* --blackduck.hub.trust.cert=true detect.default.project.version.text=4.0 --detect.project.name=Tutorial Project --blackduck.hub.proxy.host=10.131.146.14 --blackduck.hub.proxy.port=3128
      """
    }
}
