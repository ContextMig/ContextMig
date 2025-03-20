.class Lcom/fsck/k9/mail/store/pop3/Pop3Store$Pop3ErrorResponse;
.super Lcom/fsck/k9/mail/MessagingException;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/pop3/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pop3ErrorResponse"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x32f5e070b46335a6L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1270
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    .line 1271
    return-void
.end method
