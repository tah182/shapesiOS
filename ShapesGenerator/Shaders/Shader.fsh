//
//  Shader.fsh
//  ShapesGenerator
//
//  Created by Tah Tatsumoto on 11/6/14.
//  Copyright (c) 2014 Mad Hat Productions. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
