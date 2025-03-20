.class public interface abstract Lcom/fsck/k9/mail/Part;
.super Ljava/lang/Object;
.source "Part.java"


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addRawHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getBody()Lcom/fsck/k9/mail/Body;
.end method

.method public abstract getContentId()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDisposition()Ljava/lang/String;
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public abstract getServerExtra()Ljava/lang/String;
.end method

.method public abstract isMimeType(Ljava/lang/String;)Z
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
.end method

.method public abstract setBody(Lcom/fsck/k9/mail/Body;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setServerExtra(Ljava/lang/String;)V
.end method

.method public abstract writeHeaderTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method
