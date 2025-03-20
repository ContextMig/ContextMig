.class Lcom/fsck/k9/notification/NotificationIds;
.super Ljava/lang/Object;
.source "NotificationIds.java"


# static fields
.field private static final NUMBER_OF_DEVICE_NOTIFICATIONS:I = 0x7

.field private static final NUMBER_OF_NOTIFICATIONS_PER_ACCOUNT:I = 0xf

.field private static final NUMBER_OF_STACKED_NOTIFICATIONS:I = 0x8

.field private static final OFFSET_AUTHENTICATION_ERROR_INCOMING:I = 0x3

.field private static final OFFSET_AUTHENTICATION_ERROR_OUTGOING:I = 0x4

.field private static final OFFSET_CERTIFICATE_ERROR_INCOMING:I = 0x1

.field private static final OFFSET_CERTIFICATE_ERROR_OUTGOING:I = 0x2

.field private static final OFFSET_FETCHING_MAIL:I = 0x5

.field private static final OFFSET_NEW_MAIL_STACKED:I = 0x7

.field private static final OFFSET_NEW_MAIL_SUMMARY:I = 0x6

.field private static final OFFSET_SEND_FAILED_NOTIFICATION:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthenticationErrorNotificationId(Lcom/fsck/k9/Account;Z)I
    .locals 2
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "incoming"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 51
    .local v0, "offset":I
    :goto_0
    invoke-static {p0}, Lcom/fsck/k9/notification/NotificationIds;->getBaseNotificationId(Lcom/fsck/k9/Account;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 50
    .end local v0    # "offset":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private static getBaseNotificationId(Lcom/fsck/k9/Account;)I
    .locals 1
    .param p0, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getCertificateErrorNotificationId(Lcom/fsck/k9/Account;Z)I
    .locals 2
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "incoming"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 46
    .local v0, "offset":I
    :goto_0
    invoke-static {p0}, Lcom/fsck/k9/notification/NotificationIds;->getBaseNotificationId(Lcom/fsck/k9/Account;)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 45
    .end local v0    # "offset":I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getFetchingMailNotificationId(Lcom/fsck/k9/Account;)I
    .locals 1
    .param p0, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/fsck/k9/notification/NotificationIds;->getBaseNotificationId(Lcom/fsck/k9/Account;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public static getNewMailStackedNotificationId(Lcom/fsck/k9/Account;I)I
    .locals 3
    .param p0, "account"    # Lcom/fsck/k9/Account;
    .param p1, "index"    # I

    .prologue
    .line 29
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/notification/NotificationIds;->getBaseNotificationId(Lcom/fsck/k9/Account;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    add-int/2addr v0, p1

    return v0
.end method

.method public static getNewMailSummaryNotificationId(Lcom/fsck/k9/Account;)I
    .locals 1
    .param p0, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 25
    invoke-static {p0}, Lcom/fsck/k9/notification/NotificationIds;->getBaseNotificationId(Lcom/fsck/k9/Account;)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public static getSendFailedNotificationId(Lcom/fsck/k9/Account;)I
    .locals 1
    .param p0, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/fsck/k9/notification/NotificationIds;->getBaseNotificationId(Lcom/fsck/k9/Account;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    return v0
.end method
