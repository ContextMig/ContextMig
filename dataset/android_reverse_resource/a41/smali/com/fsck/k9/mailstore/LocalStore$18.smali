.class Lcom/fsck/k9/mailstore/LocalStore$18;
.super Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
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
    .line 881
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$18;->this$0:Lcom/fsck/k9/mailstore/LocalStore;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$18;->val$rawInputStream:Ljava/io/InputStream;

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

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
    .line 884
    invoke-super {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->close()V

    .line 885
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$18;->val$rawInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 886
    return-void
.end method
