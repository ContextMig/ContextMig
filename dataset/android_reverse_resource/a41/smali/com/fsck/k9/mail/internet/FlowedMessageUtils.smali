.class Lcom/fsck/k9/mail/internet/FlowedMessageUtils;
.super Ljava/lang/Object;
.source "FlowedMessageUtils.java"


# static fields
.field private static final HEADER_DELSP_YES:Ljava/lang/String; = "yes"

.field private static final HEADER_FORMAT_FLOWED:Ljava/lang/String; = "flowed"

.field private static final HEADER_PARAM_DELSP:Ljava/lang/String; = "delsp"

.field private static final HEADER_PARAM_FORMAT:Ljava/lang/String; = "format"

.field private static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isDelSp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/FlowedMessageUtils;->isFormatFlowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "delsp"

    invoke-static {p0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "delSpParameter":Ljava/lang/String;
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 30
    .end local v0    # "delSpParameter":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isFormatFlowed(Ljava/lang/String;)Z
    .locals 3
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 17
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, "mimeType":Ljava/lang/String;
    const-string v2, "text/plain"

    invoke-static {v2, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    const-string v2, "format"

    invoke-static {p0, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "formatParameter":Ljava/lang/String;
    const-string v2, "flowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 22
    .end local v0    # "formatParameter":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
