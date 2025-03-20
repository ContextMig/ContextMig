.class abstract Lcom/dropbox/sync/android/DbxToken;
.super Ljava/lang/Object;
.source "DbxToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxToken$FormatException;,
        Lcom/dropbox/sync/android/DbxToken$OAuth2;,
        Lcom/dropbox/sync/android/DbxToken$OAuth1;
    }
.end annotation


# static fields
.field private static final OAUTH2_SERIALIZATION_PREFIX:Ljava/lang/String; = "|oa2|"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method static checkTokenArg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "arg"    # Ljava/lang/String;
    .param p1, "argName"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/dropbox/sync/android/DbxToken;->getTokenPartError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "error":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v1, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getTokenPartError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p0, :cond_0

    const-string v0, "can\'t be null"

    .line 128
    :goto_0
    return-object v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "can\'t be empty"

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t contain a space: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t contain a \"|\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/dropbox/sync/android/DbxToken;
    .locals 9
    .param p0, "serialized"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxToken$FormatException;
        }
    .end annotation

    .prologue
    .line 161
    const-string v6, "|oa2|"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    const-string v6, "|oa2|"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, "token":Ljava/lang/String;
    invoke-static {v5}, Lcom/dropbox/sync/android/DbxToken;->getTokenPartError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "error":Ljava/lang/String;
    if-eqz v2, :cond_0

    new-instance v6, Lcom/dropbox/sync/android/DbxToken$FormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad OAuth 2 token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/dropbox/sync/android/CoreStringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/dropbox/sync/android/DbxToken$FormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 165
    :cond_0
    new-instance v6, Lcom/dropbox/sync/android/DbxToken$OAuth2;

    invoke-direct {v6, v5}, Lcom/dropbox/sync/android/DbxToken$OAuth2;-><init>(Ljava/lang/String;)V

    .line 178
    .end local v2    # "error":Ljava/lang/String;
    .end local v5    # "token":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 168
    :cond_1
    const/16 v6, 0x7c

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 169
    .local v0, "divPos":I
    if-gez v0, :cond_2

    new-instance v6, Lcom/dropbox/sync/android/DbxToken$FormatException;

    const-string v7, "missing \"|\" divider"

    invoke-direct {v6, v7}, Lcom/dropbox/sync/android/DbxToken$FormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 171
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "secret":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/dropbox/sync/android/DbxToken$FormatException;

    const-string v7, "first half is empty"

    invoke-direct {v6, v7}, Lcom/dropbox/sync/android/DbxToken$FormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 175
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Lcom/dropbox/sync/android/DbxToken$FormatException;

    const-string v7, "second half is empty"

    invoke-direct {v6, v7}, Lcom/dropbox/sync/android/DbxToken$FormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    :cond_4
    :try_start_0
    new-instance v6, Lcom/dropbox/sync/android/DbxToken$OAuth1;

    invoke-direct {v6, v3, v4}, Lcom/dropbox/sync/android/DbxToken$OAuth1;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
    new-instance v6, Lcom/dropbox/sync/android/DbxToken$FormatException;

    invoke-direct {v6, v1}, Lcom/dropbox/sync/android/DbxToken$FormatException;-><init>(Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;)V

    throw v6
.end method


# virtual methods
.method public abstract serialize()Ljava/lang/String;
.end method
