node ('docker2'){
    
    stage ('Checkout SCM') {
        checkout scm        
    }
    
    stage ('Black Duck Scan') {
       hub_scan bomUpdateMaximumWaitTime: '5', cleanupOnSuccessfulScan: true, codeLocationName: 'Jenkins/Super-Node1.0', deletePreviousCodeLocations: false, dryRun: false, excludePatterns: [[exclusionPattern: '']], hubProjectName: 'Super-Node-JS', hubProjectVersion: '1.0', hubVersionDist: 'EXTERNAL', hubVersionPhase: 'PLANNING', projectLevelAdjustments: true, scanMemory: '4096', scans: [[scanTarget: '']], shouldGenerateHubReport: true, unmapPreviousCodeLocations: false
    }
}
