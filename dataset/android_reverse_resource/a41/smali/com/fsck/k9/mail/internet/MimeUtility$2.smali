.class final Lcom/fsck/k9/mail/internet/MimeUtility$2;
.super Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
.source "MimeUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/internet/MimeUtility;->decodeBody(Lcom/fsck/k9/mail/Body;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$rawInputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 1033
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeUtility$2;->val$rawInputStream:Ljava/io/InputStream;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

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
    .line 1036
    invoke-super {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->close()V

    .line 1037
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeUtility$2;->val$rawInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V

    .line 1038
    return-void
.end method
