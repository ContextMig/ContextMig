.class public Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;
.super Ljava/lang/Object;
.source "DeviceApprovalsChangeUnlinkActionDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;,
        Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;-><init>(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;)V
    .locals 0
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;
    .param p2, "previousValue"    # Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    .line 42
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    if-ne p1, p0, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v1

    .line 149
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 150
    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 154
    check-cast v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;

    .line 155
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    .line 156
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;
    :cond_5
    move v1, v2

    .line 160
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 137
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkPolicy;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 141
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
