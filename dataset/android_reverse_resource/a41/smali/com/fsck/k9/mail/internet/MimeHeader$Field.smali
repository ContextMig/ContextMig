.class Lcom/fsck/k9/mail/internet/MimeHeader$Field;
.super Ljava/lang/Object;
.source "MimeHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/MimeHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Field"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final raw:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'name\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->raw:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public static newNameValueField(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'value\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newRawField(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'raw\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;

    .line 201
    :goto_0
    return-object v1

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->raw:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 197
    .local v0, "delimiterIndex":I
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->raw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 198
    const-string v1, ""

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->raw:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasRawData()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->raw:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->hasRawData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getRaw()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
