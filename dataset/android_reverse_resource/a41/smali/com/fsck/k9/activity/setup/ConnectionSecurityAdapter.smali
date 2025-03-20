.class Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ConnectionSecurityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "securityTypes"    # [Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 12
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-static {}, Lcom/fsck/k9/mail/ConnectionSecurity;->values()[Lcom/fsck/k9/mail/ConnectionSecurity;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;->get(Landroid/content/Context;[Lcom/fsck/k9/mail/ConnectionSecurity;)Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;[Lcom/fsck/k9/mail/ConnectionSecurity;)Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "items"    # [Lcom/fsck/k9/mail/ConnectionSecurity;

    .prologue
    .line 20
    array-length v3, p1

    new-array v0, v3, [Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;

    .line 21
    .local v0, "holders":[Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 22
    new-instance v3, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;

    aget-object v4, p1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;-><init>(Lcom/fsck/k9/mail/ConnectionSecurity;Landroid/content/res/Resources;)V

    aput-object v3, v0, v1

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p0, v3, v0}, Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;-><init>(Landroid/content/Context;I[Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;)V

    .line 26
    .local v2, "securityTypesAdapter":Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;->setDropDownViewResource(I)V

    .line 27
    return-object v2
.end method


# virtual methods
.method public getConnectionSecurityPosition(Lcom/fsck/k9/mail/ConnectionSecurity;)I
    .locals 2
    .param p1, "connectionSecurity"    # Lcom/fsck/k9/mail/ConnectionSecurity;

    .prologue
    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 32
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/ConnectionSecurityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;

    iget-object v1, v1, Lcom/fsck/k9/activity/setup/ConnectionSecurityHolder;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    if-ne v1, p1, :cond_0

    .line 36
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 31
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
