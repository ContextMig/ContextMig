.class Lme/writeily/CurrentFolderChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CurrentFolderChangedReceiver.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Lme/writeily/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/CurrentFolderChangedReceiver;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x50035873125c2690L    # -1.5466565081030305E-77

    const-string v2, "me/writeily/CurrentFolderChangedReceiver"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/CurrentFolderChangedReceiver;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lme/writeily/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/CurrentFolderChangedReceiver;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lme/writeily/CurrentFolderChangedReceiver;->context:Lme/writeily/MainActivity;

    .line 19
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private backButtonText(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/CurrentFolderChangedReceiver;->$jacocoInit()[Z

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    aput-boolean v3, v1, v0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writeily > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xe

    aput-boolean v3, v1, v2

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private toggleBreadcrumbsVisibility(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/CurrentFolderChangedReceiver;->$jacocoInit()[Z

    move-result-object v1

    .line 31
    iget-object v0, p0, Lme/writeily/CurrentFolderChangedReceiver;->context:Lme/writeily/MainActivity;

    const v2, 0x7f0c0060

    invoke-virtual {v0, v2}, Lme/writeily/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    .line 32
    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aput-boolean v3, v1, v4

    .line 33
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x9

    aput-boolean v3, v1, v0

    .line 38
    :goto_0
    const/16 v0, 0xc

    aput-boolean v3, v1, v0

    return-void

    .line 35
    :cond_0
    invoke-direct {p0, p1, p2}, Lme/writeily/CurrentFolderChangedReceiver;->backButtonText(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    .line 36
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0xb

    aput-boolean v3, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/CurrentFolderChangedReceiver;->$jacocoInit()[Z

    move-result-object v2

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "current_folder_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    aput-boolean v4, v2, v4

    .line 28
    :goto_0
    const/4 v0, 0x6

    aput-boolean v4, v2, v0

    return-void

    .line 23
    :cond_0
    const/4 v0, 0x2

    aput-boolean v4, v2, v0

    .line 24
    const-string v0, "filesystem_current_folder"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x3

    aput-boolean v4, v2, v1

    .line 25
    const-string v1, "filesystem_root_dir"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const/4 v3, 0x4

    aput-boolean v4, v2, v3

    .line 26
    invoke-direct {p0, v0, v1}, Lme/writeily/CurrentFolderChangedReceiver;->toggleBreadcrumbsVisibility(Ljava/io/File;Ljava/io/File;)V

    const/4 v0, 0x5

    aput-boolean v4, v2, v0

    goto :goto_0
.end method
