.class public Lme/writeily/widget/FilesWidgetFactory;
.super Ljava/lang/Object;
.source "FilesWidgetFactory.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private appWidgetId:I

.field private context:Landroid/content/Context;

.field private dir:Ljava/io/File;

.field private widgetFilesList:[Ljava/io/File;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/widget/FilesWidgetFactory;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x6c9b542841fc0050L    # 1.4720295183836553E215

    const-string v2, "me/writeily/widget/FilesWidgetFactory"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/widget/FilesWidgetFactory;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array v1, v2, [Ljava/io/File;

    iput-object v1, p0, Lme/writeily/widget/FilesWidgetFactory;->widgetFilesList:[Ljava/io/File;

    .line 24
    iput-object p1, p0, Lme/writeily/widget/FilesWidgetFactory;->context:Landroid/content/Context;

    aput-boolean v3, v0, v2

    .line 25
    const-string v1, "appWidgetId"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lme/writeily/widget/FilesWidgetFactory;->appWidgetId:I

    aput-boolean v3, v0, v3

    .line 26
    new-instance v1, Ljava/io/File;

    const-string v2, "folder_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lme/writeily/widget/FilesWidgetFactory;->dir:Ljava/io/File;

    .line 27
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method private updateFiles()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iget-object v1, p0, Lme/writeily/widget/FilesWidgetFactory;->dir:Ljava/io/File;

    new-instance v2, Lme/writeily/widget/FilesWidgetFactory$1;

    invoke-direct {v2, p0}, Lme/writeily/widget/FilesWidgetFactory$1;-><init>(Lme/writeily/widget/FilesWidgetFactory;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/widget/FilesWidgetFactory;->widgetFilesList:[Ljava/io/File;

    .line 46
    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    iget-object v1, p0, Lme/writeily/widget/FilesWidgetFactory;->widgetFilesList:[Ljava/io/File;

    array-length v1, v1

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getItemId(I)J
    .locals 5

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 80
    int-to-long v2, p1

    const/16 v1, 0xf

    const/4 v4, 0x1

    aput-boolean v4, v0, v1

    return-wide v2
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const v7, 0x7f0c0097

    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    iget-object v1, p0, Lme/writeily/widget/FilesWidgetFactory;->widgetFilesList:[Ljava/io/File;

    aget-object v1, v1, p1

    const/16 v2, 0x8

    aput-boolean v6, v0, v2

    .line 61
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "note_key"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x9

    aput-boolean v6, v0, v3

    .line 62
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lme/writeily/widget/FilesWidgetFactory;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030044

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0xa

    aput-boolean v6, v0, v4

    .line 63
    sget-object v4, Lme/writeily/model/Constants;->MD_EXTENSION:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    .line 64
    invoke-virtual {v3, v7, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 65
    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    return-object v3
.end method

.method public getViewTypeCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 75
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    return v2
.end method

.method public hasStableIds()Z
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 85
    const/4 v1, 0x0

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public onCreate()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lme/writeily/widget/FilesWidgetFactory;->onDataSetChanged()V

    .line 32
    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    invoke-direct {p0}, Lme/writeily/widget/FilesWidgetFactory;->updateFiles()V

    .line 37
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory;->$jacocoInit()[Z

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    iput-object v1, p0, Lme/writeily/widget/FilesWidgetFactory;->widgetFilesList:[Ljava/io/File;

    .line 51
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
