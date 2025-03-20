.class final Lcom/fsck/k9/mail/internet/MimeUtility$1;
.super Lorg/apache/james/mime4j/codec/Base64InputStream;
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
.method constructor <init>(Ljava/io/InputStream;ZLjava/io/InputStream;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Z

    .prologue
    .line 1025
    iput-object p3, p0, Lcom/fsck/k9/mail/internet/MimeUtility$1;->val$rawInputStream:Ljava/io/InputStream;

    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

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
    .line 1028
    invoke-super {p0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->close()V

    .line 1029
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeUtility$1;->val$rawInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/fsck/k9/mail/internet/MimeUtility;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V

    .line 1030
    return-void
.end method
