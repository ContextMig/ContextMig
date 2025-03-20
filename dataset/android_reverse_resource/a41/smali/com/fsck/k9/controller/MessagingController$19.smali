.class Lcom/fsck/k9/controller/MessagingController$19;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/controller/MessagingController;->loadMessageRemote(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/controller/MessagingController;

.field final synthetic val$account:Lcom/fsck/k9/Account;

.field final synthetic val$folder:Ljava/lang/String;

.field final synthetic val$listener:Lcom/fsck/k9/controller/MessagingListener;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/controller/MessagingController;

    .prologue
    .line 2282
    iput-object p1, p0, Lcom/fsck/k9/controller/MessagingController$19;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iput-object p2, p0, Lcom/fsck/k9/controller/MessagingController$19;->val$account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/controller/MessagingController$19;->val$folder:Ljava/lang/String;

    iput-object p4, p0, Lcom/fsck/k9/controller/MessagingController$19;->val$uid:Ljava/lang/String;

    iput-object p5, p0, Lcom/fsck/k9/controller/MessagingController$19;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/fsck/k9/controller/MessagingController$19;->this$0:Lcom/fsck/k9/controller/MessagingController;

    iget-object v1, p0, Lcom/fsck/k9/controller/MessagingController$19;->val$account:Lcom/fsck/k9/Account;

    iget-object v2, p0, Lcom/fsck/k9/controller/MessagingController$19;->val$folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/fsck/k9/controller/MessagingController$19;->val$uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/fsck/k9/controller/MessagingController$19;->val$listener:Lcom/fsck/k9/controller/MessagingListener;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/fsck/k9/controller/MessagingController;->access$1200(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/controller/MessagingListener;Z)Z

    .line 2286
    return-void
.end method
