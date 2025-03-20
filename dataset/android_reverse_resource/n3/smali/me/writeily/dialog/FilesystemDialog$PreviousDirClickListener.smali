.class Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;
.super Ljava/lang/Object;
.source "FilesystemDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/dialog/FilesystemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviousDirClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/dialog/FilesystemDialog;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5b7cb046a8f70849L    # 5.0908128834980204E132

    const-string v2, "me/writeily/dialog/FilesystemDialog$PreviousDirClickListener"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lme/writeily/dialog/FilesystemDialog;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 272
    iput-object p1, p0, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method synthetic constructor <init>(Lme/writeily/dialog/FilesystemDialog;Lme/writeily/dialog/FilesystemDialog$1;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 272
    invoke-direct {p0, p1}, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;-><init>(Lme/writeily/dialog/FilesystemDialog;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 275
    iget-object v1, p0, Lme/writeily/dialog/FilesystemDialog$PreviousDirClickListener;->this$0:Lme/writeily/dialog/FilesystemDialog;

    invoke-static {v1}, Lme/writeily/dialog/FilesystemDialog;->access$700(Lme/writeily/dialog/FilesystemDialog;)V

    .line 276
    aput-boolean v2, v0, v2

    return-void
.end method
