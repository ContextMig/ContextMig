.class public Lme/writeily/PreviewActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "PreviewActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private currentDir:Ljava/lang/String;

.field private isEditIncoming:Z

.field private markdownHtml:Ljava/lang/String;

.field private markdownRaw:Ljava/lang/String;

.field private note:Ljava/io/File;

.field private previewWebView:Landroid/webkit/WebView;

.field private renderer:Lme/writeily/renderer/MarkDownRenderer;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/PreviewActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1e841de32bc88710L

    const-string v2, "me/writeily/PreviewActivity"

    const/16 v3, 0x55

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/PreviewActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 31
    iput-boolean v1, p0, Lme/writeily/PreviewActivity;->isEditIncoming:Z

    aput-boolean v2, v0, v1

    .line 32
    new-instance v1, Lme/writeily/renderer/MarkDownRenderer;

    invoke-direct {v1}, Lme/writeily/renderer/MarkDownRenderer;-><init>()V

    iput-object v1, p0, Lme/writeily/PreviewActivity;->renderer:Lme/writeily/renderer/MarkDownRenderer;

    aput-boolean v2, v0, v2

    return-void
.end method

.method private editNote()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 167
    iput-boolean v4, p0, Lme/writeily/PreviewActivity;->isEditIncoming:Z

    const/16 v1, 0x50

    aput-boolean v4, v0, v1

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lme/writeily/NoteActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x51

    aput-boolean v4, v0, v2

    .line 170
    const-string v2, "note_key"

    iget-object v3, p0, Lme/writeily/PreviewActivity;->note:Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x52

    aput-boolean v4, v0, v2

    .line 172
    invoke-virtual {p0, v1}, Lme/writeily/PreviewActivity;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x53

    aput-boolean v4, v0, v1

    .line 173
    const v1, 0x7f04000b

    const v2, 0x7f04000f

    invoke-virtual {p0, v1, v2}, Lme/writeily/PreviewActivity;->overridePendingTransition(II)V

    .line 174
    const/16 v1, 0x54

    aput-boolean v4, v0, v1

    return-void
.end method

.method private getBitmapFromWebView(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 133
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v0, v2

    const/16 v0, 0x30

    const/4 v3, 0x1

    aput-boolean v3, v1, v0

    .line 134
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v3

    const/16 v0, 0x31

    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    .line 135
    invoke-virtual {v3}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v3}, Landroid/graphics/Picture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v4, 0x32

    const/4 v5, 0x1

    aput-boolean v5, v1, v4

    .line 136
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v5, 0x33

    const/4 v6, 0x1

    aput-boolean v6, v1, v5

    .line 137
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/16 v2, 0x34

    const/4 v5, 0x1

    aput-boolean v5, v1, v2

    .line 138
    invoke-virtual {v3, v4}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/16 v2, 0x35

    aput-boolean v7, v1, v2

    .line 142
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    const/16 v2, 0x36

    aput-boolean v7, v1, v2

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const/4 v0, 0x0

    const/16 v2, 0x37

    aput-boolean v7, v1, v2

    goto :goto_0
.end method

.method private saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 147
    const/4 v3, 0x0

    const/16 v2, 0x38

    const/4 v5, 0x1

    :try_start_0
    aput-boolean v5, v4, v2

    .line 149
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "stream":Ljava/io/FileOutputStream;
    const/16 v2, 0x39

    const/4 v3, 0x1

    :try_start_1
    aput-boolean v3, v4, v2

    .line 150
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    const/16 v2, 0x3a

    const/4 v3, 0x1

    :try_start_2
    aput-boolean v3, v4, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    if-nez v0, :cond_0

    const/16 v2, 0x3b

    const/4 v3, 0x1

    :try_start_3
    aput-boolean v3, v4, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 162
    :goto_0
    const/16 v2, 0x3e

    aput-boolean v1, v4, v2

    .line 151
    :goto_1
    const/16 v2, 0x40

    aput-boolean v1, v4, v2

    .line 154
    :goto_2
    return v1

    .line 158
    :cond_0
    const/16 v2, 0x3c

    const/4 v3, 0x1

    :try_start_4
    aput-boolean v3, v4, v2

    .line 159
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/16 v2, 0x3d

    const/4 v3, 0x1

    aput-boolean v3, v4, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v2

    const/16 v2, 0x3f

    aput-boolean v1, v4, v2

    goto :goto_1

    .line 152
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v3

    .restart local v0    # "stream":Ljava/io/FileOutputStream;
    :goto_3
    const/16 v3, 0x41

    const/4 v5, 0x1

    :try_start_5
    aput-boolean v5, v4, v3

    .line 153
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 154
    const/4 v2, 0x0

    const/16 v3, 0x42

    const/4 v5, 0x1

    :try_start_6
    aput-boolean v5, v4, v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    if-nez v0, :cond_1

    const/16 v3, 0x43

    const/4 v5, 0x1

    :try_start_7
    aput-boolean v5, v4, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 162
    :goto_4
    const/16 v3, 0x46

    aput-boolean v1, v4, v3

    .line 154
    :goto_5
    const/16 v3, 0x48

    aput-boolean v1, v4, v3

    move v1, v2

    goto :goto_2

    .line 158
    :cond_1
    const/16 v3, 0x44

    const/4 v5, 0x1

    :try_start_8
    aput-boolean v5, v4, v3

    .line 159
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/16 v3, 0x45

    const/4 v5, 0x1

    aput-boolean v5, v4, v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 161
    :catch_2
    move-exception v3

    const/16 v3, 0x47

    aput-boolean v1, v4, v3

    goto :goto_5

    .line 157
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v2

    move-object v0, v3

    .restart local v0    # "stream":Ljava/io/FileOutputStream;
    :goto_6
    const/16 v3, 0x49

    const/4 v5, 0x1

    :try_start_9
    aput-boolean v5, v4, v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 158
    if-nez v0, :cond_2

    const/16 v3, 0x4a

    const/4 v5, 0x1

    :try_start_a
    aput-boolean v5, v4, v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 162
    :goto_7
    const/16 v3, 0x4d

    aput-boolean v1, v4, v3

    .line 163
    :goto_8
    const/16 v3, 0x4f

    aput-boolean v1, v4, v3

    throw v2

    .line 158
    :cond_2
    const/16 v3, 0x4b

    const/4 v5, 0x1

    :try_start_b
    aput-boolean v5, v4, v3

    .line 159
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/16 v3, 0x4c

    const/4 v5, 0x1

    aput-boolean v5, v4, v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_7

    .line 161
    :catch_3
    move-exception v3

    const/16 v3, 0x4e

    aput-boolean v1, v4, v3

    goto :goto_8

    .line 157
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 152
    :catch_4
    move-exception v2

    goto :goto_3
.end method

.method private setTitleFromNote(Ljava/io/File;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    if-eqz p1, :cond_0

    const/16 v1, 0xf

    aput-boolean v3, v0, v1

    .line 58
    iget-object v1, p0, Lme/writeily/PreviewActivity;->note:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/writeily/PreviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    aput-boolean v3, v0, v1

    .line 62
    :goto_0
    const/16 v1, 0x12

    aput-boolean v3, v0, v1

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/writeily/PreviewActivity;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method private shareImage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 122
    iget-object v2, p0, Lme/writeily/PreviewActivity;->previewWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v2}, Lme/writeily/PreviewActivity;->getBitmapFromWebView(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const/16 v2, 0x29

    aput-boolean v6, v1, v2

    .line 129
    :goto_0
    const/16 v2, 0x2f

    aput-boolean v6, v1, v2

    return-void

    .line 123
    :cond_0
    const/16 v2, 0x2a

    aput-boolean v6, v1, v2

    .line 124
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lme/writeily/PreviewActivity;->note:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, 0x2b

    aput-boolean v6, v1, v3

    .line 125
    invoke-direct {p0, v0, v2}, Lme/writeily/PreviewActivity;->saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v2, 0x2c

    aput-boolean v6, v1, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x2d

    aput-boolean v6, v1, v3

    .line 126
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "image/png"

    invoke-direct {p0, v2, v3}, Lme/writeily/PreviewActivity;->shareStream(Landroid/net/Uri;Ljava/lang/String;)V

    const/16 v2, 0x2e

    aput-boolean v6, v1, v2

    goto :goto_0
.end method

.method private shareStream(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 114
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x24

    aput-boolean v4, v0, v2

    .line 115
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x25

    aput-boolean v4, v0, v2

    .line 116
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x26

    aput-boolean v4, v0, v2

    .line 117
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x27

    aput-boolean v4, v0, v2

    .line 118
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/writeily/PreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    const/16 v1, 0x28

    aput-boolean v4, v0, v1

    return-void
.end method

.method private shareText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/16 v2, 0x1f

    aput-boolean v4, v0, v2

    .line 107
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x20

    aput-boolean v4, v0, v2

    .line 108
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x21

    aput-boolean v4, v0, v2

    .line 109
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x22

    aput-boolean v4, v0, v2

    .line 110
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/writeily/PreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    const/16 v1, 0x23

    aput-boolean v4, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v7

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    aput-boolean v8, v7, v0

    .line 37
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lme/writeily/PreviewActivity;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v8, v7, v0

    .line 39
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lme/writeily/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/Toolbar;

    .line 40
    .local v6, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-nez v6, :cond_0

    const/4 v0, 0x4

    aput-boolean v8, v7, v0

    .line 45
    :goto_0
    const v0, 0x7f0c006b

    invoke-virtual {p0, v0}, Lme/writeily/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lme/writeily/PreviewActivity;->previewWebView:Landroid/webkit/WebView;

    const/16 v0, 0x8

    aput-boolean v8, v7, v0

    .line 46
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "md_preview_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/PreviewActivity;->markdownRaw:Ljava/lang/String;

    const/16 v0, 0x9

    aput-boolean v8, v7, v0

    .line 47
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "md_preview_base"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xa

    aput-boolean v8, v7, v0

    .line 48
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "note_key"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lme/writeily/PreviewActivity;->note:Ljava/io/File;

    const/16 v0, 0xb

    aput-boolean v8, v7, v0

    .line 50
    iget-object v0, p0, Lme/writeily/PreviewActivity;->note:Ljava/io/File;

    invoke-direct {p0, v0}, Lme/writeily/PreviewActivity;->setTitleFromNote(Ljava/io/File;)V

    const/16 v0, 0xc

    aput-boolean v8, v7, v0

    .line 51
    iget-object v0, p0, Lme/writeily/PreviewActivity;->renderer:Lme/writeily/renderer/MarkDownRenderer;

    iget-object v2, p0, Lme/writeily/PreviewActivity;->markdownRaw:Ljava/lang/String;

    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lme/writeily/renderer/MarkDownRenderer;->renderMarkdown(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/writeily/PreviewActivity;->markdownHtml:Ljava/lang/String;

    const/16 v0, 0xd

    aput-boolean v8, v7, v0

    .line 53
    iget-object v0, p0, Lme/writeily/PreviewActivity;->previewWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lme/writeily/PreviewActivity;->markdownHtml:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v0, 0xe

    aput-boolean v8, v7, v0

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x5

    aput-boolean v8, v7, v0

    .line 41
    invoke-virtual {p0, v6}, Lme/writeily/PreviewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v0, 0x6

    aput-boolean v8, v7, v0

    .line 42
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x7

    aput-boolean v8, v7, v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0e0005

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 81
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 101
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x1e

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 83
    :sswitch_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 84
    const/16 v1, 0x18

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 86
    :sswitch_1
    iget-object v1, p0, Lme/writeily/PreviewActivity;->markdownRaw:Ljava/lang/String;

    const-string v3, "text/plain"

    invoke-direct {p0, v1, v3}, Lme/writeily/PreviewActivity;->shareText(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/16 v1, 0x19

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 89
    :sswitch_2
    iget-object v1, p0, Lme/writeily/PreviewActivity;->markdownHtml:Ljava/lang/String;

    const-string v3, "text/html"

    invoke-direct {p0, v1, v3}, Lme/writeily/PreviewActivity;->shareText(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/16 v1, 0x1a

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 92
    :sswitch_3
    iget-object v1, p0, Lme/writeily/PreviewActivity;->markdownHtml:Ljava/lang/String;

    const-string v3, "text/plain"

    invoke-direct {p0, v1, v3}, Lme/writeily/PreviewActivity;->shareText(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/16 v1, 0x1b

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 95
    :sswitch_4
    invoke-direct {p0}, Lme/writeily/PreviewActivity;->shareImage()V

    .line 96
    const/16 v1, 0x1c

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 98
    :sswitch_5
    invoke-direct {p0}, Lme/writeily/PreviewActivity;->editNote()V

    .line 99
    const/16 v1, 0x1d

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 81
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c00a9 -> :sswitch_1
        0x7f0c00aa -> :sswitch_2
        0x7f0c00ab -> :sswitch_3
        0x7f0c00ac -> :sswitch_4
        0x7f0c00ad -> :sswitch_5
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/PreviewActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iget-boolean v1, p0, Lme/writeily/PreviewActivity;->isEditIncoming:Z

    if-nez v1, :cond_0

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 70
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 71
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return-void

    .line 66
    :cond_0
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    .line 67
    invoke-virtual {p0}, Lme/writeily/PreviewActivity;->finish()V

    const/16 v1, 0x15

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
