.class public final Lcom/fsck/k9/helper/EmailHelper;
.super Ljava/lang/Object;
.source "EmailHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDomainFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 8
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 9
    .local v0, "separatorIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return-object v1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
