.class public Lorg/openintents/openpgp/util/OpenPgpUtils;
.super Ljava/lang/Object;
.source "OpenPgpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;
    }
.end annotation


# static fields
.field public static final PARSE_RESULT_MESSAGE:I = 0x0

.field public static final PARSE_RESULT_NO_PGP:I = -0x1

.field public static final PARSE_RESULT_SIGNED_MESSAGE:I = 0x1

.field public static final PGP_MARKER_CLEARSIGN_BEGIN_MESSAGE:Ljava/lang/String; = "-----BEGIN PGP SIGNED MESSAGE-----"

.field public static final PGP_MARKER_CLEARSIGN_BEGIN_SIGNATURE:Ljava/lang/String; = "-----BEGIN PGP SIGNATURE-----"

.field public static final PGP_MESSAGE:Ljava/util/regex/Pattern;

.field public static final PGP_SIGNED_MESSAGE:Ljava/util/regex/Pattern;

.field private static final USER_ID_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 32
    const-string v0, "(-----BEGIN PGP MESSAGE-----.*?-----END PGP MESSAGE-----).*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openintents/openpgp/util/OpenPgpUtils;->PGP_MESSAGE:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "(-----BEGIN PGP SIGNED MESSAGE-----.*?-----BEGIN PGP SIGNATURE-----.*?-----END PGP SIGNATURE-----).*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openintents/openpgp/util/OpenPgpUtils;->PGP_SIGNED_MESSAGE:Ljava/util/regex/Pattern;

    .line 98
    const-string v0, "^(.*?)(?: \\((.*)\\))?(?: <(.*)>)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openintents/openpgp/util/OpenPgpUtils;->USER_ID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertKeyIdToHex(J)Ljava/lang/String;
    .locals 4
    .param p0, "keyId"    # J

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    shr-long v2, p0, v1

    invoke-static {v2, v3}, Lorg/openintents/openpgp/util/OpenPgpUtils;->convertKeyIdToHex32bit(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lorg/openintents/openpgp/util/OpenPgpUtils;->convertKeyIdToHex32bit(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertKeyIdToHex32bit(J)Ljava/lang/String;
    .locals 4
    .param p0, "keyId"    # J

    .prologue
    .line 75
    const-wide v2, 0xffffffffL

    and-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "hexString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    return-object v0
.end method

.method public static createUserId(Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    .line 129
    .local v0, "userIdString":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->comment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_1
    return-object v0
.end method

.method public static extractClearsignedMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 83
    if-eqz p0, :cond_0

    const-string v3, "-----BEGIN PGP SIGNED MESSAGE-----"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v2

    .line 86
    :cond_1
    const-string v3, "\r\n\r\n"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, 0x4

    .line 87
    .local v1, "endOfHeader":I
    if-ltz v1, :cond_0

    .line 90
    const-string v2, "-----BEGIN PGP SIGNATURE-----"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "endOfCleartext":I
    if-gez v0, :cond_2

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 95
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v3, "org.openintents.openpgp.IOpenPgpService2"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static parseMessage(Ljava/lang/String;)I
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/openintents/openpgp/util/OpenPgpUtils;->parseMessage(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static parseMessage(Ljava/lang/String;Z)I
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "anchorToStart"    # Z

    .prologue
    .line 52
    sget-object v2, Lorg/openintents/openpgp/util/OpenPgpUtils;->PGP_SIGNED_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 53
    .local v1, "matcherSigned":Ljava/util/regex/Matcher;
    sget-object v2, Lorg/openintents/openpgp/util/OpenPgpUtils;->PGP_MESSAGE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 55
    .local v0, "matcherMessage":Ljava/util/regex/Matcher;
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 60
    :goto_0
    return v2

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    :cond_5
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static splitUserId(Ljava/lang/String;)Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;
    .locals 5
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    sget-object v1, Lorg/openintents/openpgp/util/OpenPgpUtils;->USER_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 112
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    invoke-direct {v1, v2, v2, v2}, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
