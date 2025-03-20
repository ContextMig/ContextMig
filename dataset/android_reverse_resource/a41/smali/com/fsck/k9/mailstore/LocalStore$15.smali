.class Lcom/fsck/k9/mailstore/LocalStore$15;
.super Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->getAttachmentDataSource(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$partId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$15;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$15;->val$partId:Ljava/lang/String;

    invoke-direct {p0}, Lorg/openintents/openpgp/util/OpenPgpApi$OpenPgpDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$15;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$15;->val$partId:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/fsck/k9/mailstore/LocalStore;->access$300(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 693
    return-void
.end method
