node ('docker1'){
    
    stage ('Checkout SCM') {
        checkout scm        
    }
    
    stage ('Black Duck Scan') {
       //hub_scan bomUpdateMaximumWaitTime: '5', cleanupOnSuccessfulScan: true, codeLocationName: 'Jenkins/Super-Node2.0', deletePreviousCodeLocations: false, dryRun: false, excludePatterns: [[exclusionPattern: '']], hubProjectName: 'Super-Node-JS', hubProjectVersion: '2.0', hubVersionDist: 'EXTERNAL', hubVersionPhase: 'PLANNING', projectLevelAdjustments: true, scanMemory: '4096', scans: [[scanTarget: '']], shouldGenerateHubReport: true, unmapPreviousCodeLocations: false
        sh """
        curl -O https://blackducksoftware.github.io/hub-detect/hub-detect.sh   
        chmod +x hub-detect.sh && ./hub-detect.sh --blackduck.hub.url='https://bduck01.core.rcsops.com' --blackduck.hub.api.token=N2E2MDkyODktNGZlNi00ZmNiLThhNDUtM2I5M2NmNjhiNTkwOmE3ZTBlYzAwLTRjOWEtNDhlNS1hNDkxLWE1ZjcwOWE3YzU1NA== --blackduck.hub.trust.cert=true --detect.default.project.version.text=2.0 --detect.project.name=Super-Node-JS --blackduck.hub.proxy.host=10.131.146.14 --blackduck.hub.proxy.port=3128 --detect.project.codelocation.suffix=Super-Node-JS --detect.risk.report.pdf=true
        """
    }   
    stage ('Archive PDF') {
        archiveArtifacts artifacts: '/BlackDuck_RiskReport/.pdf'
    }
}

