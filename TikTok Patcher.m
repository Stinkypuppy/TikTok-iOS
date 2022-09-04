NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSString *documentsDir = [documentPaths objectAtIndex:0];
        NSString *folder = @"Heimdallr";
        NSString *folderPath = [documentsDir stringByAppendingPathComponent:folder];
        
        NSFileManager *manager = [NSFileManager defaultManager];
        [manager createDirectoryAtPath: folderPath
         withIntermediateDirectories: NO
         attributes: nil
         error: nil];
        
        NSString *filePath = [folderPath stringByAppendingPathComponent:@"1233_v3_config.json"];
        
        NSURLSession *session = [NSURLSession sharedSession];
        [[session dataTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/Lizynz/TikTok-iOS/main/1233_v3_config.json"]
                  completionHandler:^(NSData *data,
                                      NSURLResponse *response,
                                      NSError *error) {
            if (data) {
                [data writeToFile:filePath atomically:YES];
            }

          }] resume];
