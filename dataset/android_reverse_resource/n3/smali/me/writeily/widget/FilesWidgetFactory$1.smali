.class Lme/writeily/widget/FilesWidgetFactory$1;
.super Ljava/lang/Object;
.source "FilesWidgetFactory.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/widget/FilesWidgetFactory;->updateFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/widget/FilesWidgetFactory;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/widget/FilesWidgetFactory$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x52430ab44ff2573L    # -6.461526820066261E283

    const-string v2, "me/writeily/widget/FilesWidgetFactory$1"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/widget/FilesWidgetFactory$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/widget/FilesWidgetFactory;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory$1;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    iput-object p1, p0, Lme/writeily/widget/FilesWidgetFactory$1;->this$0:Lme/writeily/widget/FilesWidgetFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lme/writeily/widget/FilesWidgetFactory$1;->$jacocoInit()[Z

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    aput-boolean v1, v2, v1

    move v0, v1

    :goto_0
    const/4 v3, 0x3

    aput-boolean v1, v2, v3

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x2

    aput-boolean v1, v2, v3

    goto :goto_0
.end method
