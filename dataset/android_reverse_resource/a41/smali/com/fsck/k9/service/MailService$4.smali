.class Lcom/fsck/k9/service/MailService$4;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/service/MailService;->refreshPushersInBackground(ZZLjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/service/MailService;


# direct methods
.method constructor <init>(Lcom/fsck/k9/service/MailService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/service/MailService;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/fsck/k9/service/MailService$4;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fsck/k9/service/MailService$4;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-static {v0}, Lcom/fsck/k9/service/MailService;->access$200(Lcom/fsck/k9/service/MailService;)V

    .line 222
    iget-object v0, p0, Lcom/fsck/k9/service/MailService$4;->this$0:Lcom/fsck/k9/service/MailService;

    invoke-static {v0}, Lcom/fsck/k9/service/MailService;->access$300(Lcom/fsck/k9/service/MailService;)V

    .line 223
    return-void
.end method
