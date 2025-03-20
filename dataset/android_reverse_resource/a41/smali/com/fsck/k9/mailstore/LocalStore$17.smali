.class Lcom/fsck/k9/mailstore/LocalStore$17;
.super Lorg/apache/james/mime4j/codec/Base64InputStream;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mailstore/LocalStore;->getDecodingInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mailstore/LocalStore;

.field final synthetic val$rawInputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/mailstore/LocalStore;
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$17;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$17;->val$rawInputStream:Ljava/io/InputStream;

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    invoke-super {p0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->close()V

    .line 876
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$17;->val$rawInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 877
    return-void
.end method
