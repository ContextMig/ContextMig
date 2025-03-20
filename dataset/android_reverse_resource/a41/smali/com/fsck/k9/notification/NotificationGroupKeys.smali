.class public Lcom/fsck/k9/notification/NotificationGroupKeys;
.super Ljava/lang/Object;
.source "NotificationGroupKeys.java"


# static fields
.field private static final NOTIFICATION_GROUP_KEY_PREFIX:Ljava/lang/String; = "newMailNotifications-"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGroupKey(Lcom/fsck/k9/Account;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newMailNotifications-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
