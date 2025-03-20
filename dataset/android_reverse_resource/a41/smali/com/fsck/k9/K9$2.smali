.class Lcom/fsck/k9/K9$2;
.super Ljava/lang/Object;
.source "K9.java"

# interfaces
.implements Lcom/fsck/k9/mail/K9MailLib$DebugStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/K9;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/K9;


# direct methods
.method constructor <init>(Lcom/fsck/k9/K9;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/K9;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/fsck/k9/K9$2;->this$0:Lcom/fsck/k9/K9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debugSensitive()Z
    .locals 1

    .prologue
    .line 541
    sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG_SENSITIVE:Z

    return v0
.end method

.method public enabled()Z
    .locals 1

    .prologue
    .line 537
    invoke-static {}, Lcom/fsck/k9/K9;->access$000()Z

    move-result v0

    return v0
.end method
