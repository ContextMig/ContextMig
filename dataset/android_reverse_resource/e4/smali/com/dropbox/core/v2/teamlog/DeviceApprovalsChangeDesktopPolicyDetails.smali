.class public Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;
.super Ljava/lang/Object;
.source "DeviceApprovalsChangeDesktopPolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;,
        Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;)V
    .locals 0
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;
    .param p2, "previousValue"    # Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    .line 42
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Builder;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    if-ne p1, p0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v1

    .line 150
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 151
    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 155
    check-cast v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;

    .line 156
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    .line 157
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;
    :cond_5
    move v1, v2

    .line 161
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 138
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsPolicy;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 142
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
