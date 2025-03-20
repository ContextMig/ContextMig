.class Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;
.super Ljava/lang/Object;
.source "FilesystemDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/dialog/FilesystemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilesItemClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/dialog/FilesystemDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x7678f23d6e4c1001L    # 4.909547930050107E262

    const-string v2, "me/writeily/dialog/FilesystemDialog$FilesItemClickListener"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lme/writeily/dialog/FilesystemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 255
    iput-object p1, p0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lme/writeily/dialog/FilesystemDialog;Lme/writeily/dialog/FilesystemDialog$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 255
    invoke-direct {p0, p1}, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;-><init>(Lme/writeily/dialog/FilesystemDialog;)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 258
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-static {v1}, Lme/writeily/dialog/FilesystemDialog;->access$400(Lme/writeily/dialog/FilesystemDialog;)Lme/writeily/adapter/FileAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lme/writeily/adapter/FileAdapter;->getItem(I)Ljava/io/File;

    move-result-object v1

    aput-boolean v4, v0, v4

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aput-boolean v4, v0, v2

    .line 262
    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-static {v2, v1}, Lme/writeily/dialog/FilesystemDialog;->access$002(Lme/writeily/dialog/FilesystemDialog;Ljava/io/File;)Ljava/io/File;

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 263
    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lme/writeily/dialog/FilesystemDialog;->access$102(Lme/writeily/dialog/FilesystemDialog;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 264
    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-static {v2, v1}, Lme/writeily/dialog/FilesystemDialog;->access$500(Lme/writeily/dialog/FilesystemDialog;Ljava/io/File;)V

    const/4 v1, 0x5

    aput-boolean v4, v0, v1

    .line 265
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-static {v2}, Lme/writeily/dialog/FilesystemDialog;->access$000(Lme/writeily/dialog/FilesystemDialog;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lme/writeily/dialog/FilesystemDialog;->access$600(Lme/writeily/dialog/FilesystemDialog;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    .line 269
    :goto_0
    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    return-void

    .line 267
    :cond_0
    iget-object v2, p0, Lme/writeily/dialog/FilesystemDialog$FilesItemClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lme/writeily/dialog/FilesystemDialog;->access$102(Lme/writeily/dialog/FilesystemDialog;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
