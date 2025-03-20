.class public Lme/writeily/widget/FilesWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "FilesWidgetService.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/widget/FilesWidgetService;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x459b08b649c7acd5L    # 2.0916568758583857E27

    const-string v2, "me/writeily/widget/FilesWidgetService"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/widget/FilesWidgetService;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetService;->$jacocoInit()[Z

    move-result-object v0

    .line 9
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/widget/FilesWidgetService;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    new-instance v1, Lme/writeily/widget/FilesWidgetFactory;

    invoke-virtual {p0}, Lme/writeily/widget/FilesWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lme/writeily/widget/FilesWidgetFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    aput-boolean v3, v0, v3

    return-object v1
.end method
