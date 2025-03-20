.class Lcom/fsck/k9/activity/setup/AuthTypeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AuthTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/fsck/k9/activity/setup/AuthTypeHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/fsck/k9/activity/setup/AuthTypeHolder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "holders"    # [Lcom/fsck/k9/activity/setup/AuthTypeHolder;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/fsck/k9/activity/setup/AuthTypeAdapter;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v4, 0x3

    new-array v0, v4, [Lcom/fsck/k9/mail/AuthType;

    const/4 v4, 0x0

    sget-object v5, Lcom/fsck/k9/mail/AuthType;->PLAIN:Lcom/fsck/k9/mail/AuthType;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/fsck/k9/mail/AuthType;->CRAM_MD5:Lcom/fsck/k9/mail/AuthType;

    aput-object v5, v0, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    aput-object v5, v0, v4

    .line 16
    .local v0, "authTypes":[Lcom/fsck/k9/mail/AuthType;
    array-length v4, v0

    new-array v2, v4, [Lcom/fsck/k9/activity/setup/AuthTypeHolder;

    .line 17
    .local v2, "holders":[Lcom/fsck/k9/activity/setup/AuthTypeHolder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 18
    new-instance v4, Lcom/fsck/k9/activity/setup/AuthTypeHolder;

    aget-object v5, v0, v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/fsck/k9/activity/setup/AuthTypeHolder;-><init>(Lcom/fsck/k9/mail/AuthType;Landroid/content/res/Resources;)V

    aput-object v4, v2, v3

    .line 17
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;

    const v4, 0x1090008

    invoke-direct {v1, p0, v4, v2}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;-><init>(Landroid/content/Context;I[Lcom/fsck/k9/activity/setup/AuthTypeHolder;)V

    .line 22
    .local v1, "authTypesAdapter":Lcom/fsck/k9/activity/setup/AuthTypeAdapter;
    const v4, 0x1090009

    invoke-virtual {v1, v4}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->setDropDownViewResource(I)V

    .line 23
    return-object v1
.end method


# virtual methods
.method public getAuthPosition(Lcom/fsck/k9/mail/AuthType;)I
    .locals 2
    .param p1, "authenticationType"    # Lcom/fsck/k9/mail/AuthType;

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 46
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/setup/AuthTypeHolder;

    iget-object v1, v1, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->authType:Lcom/fsck/k9/mail/AuthType;

    if-ne v1, p1, :cond_0

    .line 50
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 45
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public useInsecureText(Z)V
    .locals 2
    .param p1, "insecure"    # Z

    .prologue
    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/setup/AuthTypeHolder;

    invoke-virtual {v1, p1}, Lcom/fsck/k9/activity/setup/AuthTypeHolder;->setInsecure(Z)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AuthTypeAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method
