.class public interface abstract Lcom/fsck/k9/mail/ssl/TrustedSocketFactory;
.super Ljava/lang/Object;
.source "TrustedSocketFactory.java"


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/lang/String;)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Lcom/fsck/k9/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
