.class Lcom/fsck/k9/message/quote/QuoteHelper;
.super Ljava/lang/Object;
.source "QuoteHelper.java"


# static fields
.field static final QUOTE_BUFFER_LENGTH:I = 0x200


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSentDateText(Landroid/content/res/Resources;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "message"    # Lcom/fsck/k9/mail/Message;

    .prologue
    .line 28
    const/4 v2, 0x1

    .line 29
    .local v2, "dateStyle":I
    const/4 v5, 0x1

    .line 30
    .local v5, "timeStyle":I
    :try_start_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    .line 33
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Lcom/fsck/k9/K9;->hideTimeZone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 34
    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v6, v7, v8}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 35
    .local v1, "dateFormat":Ljava/text/DateFormat;
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 40
    :goto_0
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    :goto_1
    return-object v6

    .line 37
    .restart local v0    # "date":Ljava/util/Date;
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 38
    .local v4, "locale":Ljava/util/Locale;
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v6, v7, v4}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_0

    .line 41
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    .end local v4    # "locale":Ljava/util/Locale;
    :catch_0
    move-exception v3

    .line 42
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, ""

    goto :goto_1
.end method
