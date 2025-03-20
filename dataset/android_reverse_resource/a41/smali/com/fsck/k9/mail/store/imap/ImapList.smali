.class Lcom/fsck/k9/mail/store/imap/ImapList;
.super Ljava/util/ArrayList;
.source "ImapList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final BAD_DATE_TIME_FORMAT:Ljava/text/DateFormat;

.field private static final BAD_DATE_TIME_FORMAT_2:Ljava/text/DateFormat;

.field private static final BAD_DATE_TIME_FORMAT_3:Ljava/text/DateFormat;

.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field private static final serialVersionUID:J = -0x3871c4d13b9ced2fL


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fsck/k9/mail/store/imap/ImapList;->DATE_FORMAT:Ljava/text/DateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fsck/k9/mail/store/imap/ImapList;->BAD_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fsck/k9/mail/store/imap/ImapList;->BAD_DATE_TIME_FORMAT_2:Ljava/text/DateFormat;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MMM-yyyy HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fsck/k9/mail/store/imap/ImapList;->BAD_DATE_TIME_FORMAT_3:Ljava/text/DateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 61
    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "NIL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    :cond_0
    const/4 v1, 0x0

    .line 64
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse IMAP datetime \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private inRange(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 116
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    sget-object v4, Lcom/fsck/k9/mail/store/imap/ImapList;->DATE_FORMAT:Ljava/text/DateFormat;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    sget-object v3, Lcom/fsck/k9/mail/store/imap/ImapList;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    monitor-exit v4

    .line 137
    :goto_0
    return-object v3

    .line 124
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v4, Lcom/fsck/k9/mail/store/imap/ImapList;->BAD_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    monitor-enter v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 128
    :try_start_4
    sget-object v3, Lcom/fsck/k9/mail/store/imap/ImapList;->BAD_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 129
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 130
    :catch_1
    move-exception v1

    .line 132
    .local v1, "e2":Ljava/lang/Exception;
    :try_start_6
    sget-object v4, Lcom/fsck/k9/mail/store/imap/ImapList;->BAD_DATE_TIME_FORMAT_2:Ljava/text/DateFormat;

    monitor-enter v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 133
    :try_start_7
    sget-object v3, Lcom/fsck/k9/mail/store/imap/ImapList;->BAD_DATE_TIME_FORMAT_2:Ljava/text/DateFormat;

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 134
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 135
    :catch_2
    move-exception v2

    .line 136
    .local v2, "e3":Ljava/lang/Exception;
    sget-object v4, Lcom/fsck/k9/mail/store/imap/ImapList;->BAD_DATE_TIME_FORMAT_3:Ljava/text/DateFormat;

    monitor-enter v4

    .line 137
    :try_start_9
    sget-object v3, Lcom/fsck/k9/mail/store/imap/ImapList;->BAD_DATE_TIME_FORMAT_3:Ljava/text/DateFormat;

    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 138
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v3
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v2

    .line 97
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "count":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 98
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    const/4 v2, 0x1

    goto :goto_0

    .line 97
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 107
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    return v1

    .line 106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "getKeyIndex() only works for keys that are in the collection."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getKeyedDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/store/imap/ImapList;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getKeyedList(Ljava/lang/String;)Lcom/fsck/k9/mail/store/imap/ImapList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    return-object v0
.end method

.method public getKeyedNumber(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeyedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getKeyedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/imap/ImapList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/fsck/k9/mail/store/imap/ImapResponseParser;->equalsIgnoreCase(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 77
    :goto_1
    return-object v2

    .line 72
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getList(I)Lcom/fsck/k9/mail/store/imap/ImapList;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    return-object v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumber(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isList(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->inRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/fsck/k9/mail/store/imap/ImapList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->inRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/store/imap/ImapList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
