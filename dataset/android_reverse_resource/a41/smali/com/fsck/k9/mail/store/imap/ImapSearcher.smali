.class interface abstract Lcom/fsck/k9/mail/store/imap/ImapSearcher;
.super Ljava/lang/Object;
.source "ImapSearcher.java"


# virtual methods
.method public abstract search()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method
