.class public Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;
.super Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;
.source "AccountController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController",
        "<",
        "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final TAG:Ljava/lang/String; = "AccountController"


# instance fields
.field private final preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1314e22af3d78a02L

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/controller/data/AccountController"

    const/16 v3, 0x2c

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;",
            "Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v0

    .line 29
    invoke-direct {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/base/BaseController;-><init>(Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;)V

    .line 30
    iput-object p2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    .line 31
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getFirstAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v2

    .line 164
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readAll()Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/16 v3, 0x2a

    aput-boolean v4, v2, v3

    .line 166
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    const/16 v3, 0x2b

    aput-boolean v4, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public archive(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;)Z
    .locals 4
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v2

    .line 144
    if-nez p1, :cond_0

    .line 145
    const/4 v0, 0x0

    const/16 v3, 0x26

    aput-boolean v1, v2, v3

    .line 149
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->archive()V

    .line 148
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v0, 0x27

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public readActiveAccounts()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v2

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;>;"
    invoke-virtual {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->readAll()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    aput-boolean v5, v2, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 38
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    invoke-virtual {v0}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->isArchived()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    aput-boolean v5, v2, v4

    .line 41
    :goto_1
    const/4 v4, 0x4

    aput-boolean v5, v2, v4

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    aput-boolean v5, v2, v4

    goto :goto_1

    .line 43
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_1
    const/4 v3, 0x5

    aput-boolean v5, v2, v3

    return-object v1
.end method

.method public readDefaultAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v1

    .line 133
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->preferenceController:Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;

    invoke-virtual {v4}, Lcom/blogspot/e_kanivets/moneytracker/controller/PreferenceController;->readDefaultAccountId()J

    move-result-wide v2

    .line 135
    .local v2, "defaultAccountId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->getFirstAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v0

    const/16 v4, 0x23

    aput-boolean v6, v1, v4

    .line 139
    :goto_0
    return-object v0

    .line 137
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->read(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 138
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->getFirstAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v0

    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    const/16 v4, 0x24

    aput-boolean v6, v1, v4

    goto :goto_0

    .line 139
    .restart local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_1
    const/16 v4, 0x25

    aput-boolean v6, v1, v4

    goto :goto_0
.end method

.method public recordAdded(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z
    .locals 8
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v3

    .line 60
    if-nez p1, :cond_0

    const/4 v4, 0x6

    aput-boolean v2, v3, v4

    :goto_0
    const/16 v4, 0x8

    aput-boolean v2, v3, v4

    .line 80
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :goto_1
    return v1

    .line 60
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v4, 0x7

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 62
    :cond_1
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->read(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 63
    .restart local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    if-nez v0, :cond_2

    const/16 v4, 0x9

    aput-boolean v2, v3, v4

    goto :goto_1

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0xa

    aput-boolean v2, v3, v1

    .line 78
    :goto_2
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1, v0}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v1, 0xd

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 67
    :pswitch_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->take(D)V

    .line 68
    const/16 v1, 0xb

    aput-boolean v2, v3, v1

    goto :goto_2

    .line 71
    :pswitch_1
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->put(D)V

    .line 72
    const/16 v1, 0xc

    aput-boolean v2, v3, v1

    goto :goto_2

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public recordDeleted(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z
    .locals 8
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v3

    .line 84
    if-nez p1, :cond_0

    const/16 v4, 0xe

    aput-boolean v2, v3, v4

    :goto_0
    const/16 v4, 0x10

    aput-boolean v2, v3, v4

    .line 104
    .local v0, "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :goto_1
    return v1

    .line 84
    .end local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v4

    if-nez v4, :cond_1

    const/16 v4, 0xf

    aput-boolean v2, v3, v4

    goto :goto_0

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getAccount()Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->getId()J

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->read(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 87
    .restart local v0    # "account":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    if-nez v0, :cond_2

    const/16 v4, 0x11

    aput-boolean v2, v3, v4

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x12

    aput-boolean v2, v3, v1

    .line 102
    :goto_2
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v1, v0}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v1, 0x15

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_1

    .line 91
    :pswitch_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->put(D)V

    .line 92
    const/16 v1, 0x13

    aput-boolean v2, v3, v1

    goto :goto_2

    .line 95
    :pswitch_1
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;->getFullPrice()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->take(D)V

    .line 96
    const/16 v1, 0x14

    aput-boolean v2, v3, v1

    goto :goto_2

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public recordUpdated(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z
    .locals 4
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v2

    .line 109
    if-nez p1, :cond_0

    const/16 v3, 0x16

    aput-boolean v1, v2, v3

    :goto_0
    const/16 v3, 0x18

    aput-boolean v1, v2, v3

    .line 111
    :goto_1
    return v0

    .line 109
    :cond_0
    if-nez p2, :cond_1

    const/16 v3, 0x17

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->recordDeleted(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x19

    aput-boolean v1, v2, v3

    :goto_2
    const/16 v3, 0x1c

    aput-boolean v1, v2, v3

    :goto_3
    const/16 v3, 0x1d

    aput-boolean v1, v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->recordAdded(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Record;)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x1a

    aput-boolean v1, v2, v3

    goto :goto_2

    :cond_3
    const/16 v0, 0x1b

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_3
.end method

.method public restore(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;)Z
    .locals 4
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v2

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    const/16 v3, 0x28

    aput-boolean v1, v2, v3

    .line 159
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->restore()V

    .line 158
    invoke-virtual {p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v0, 0x29

    aput-boolean v1, v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public transferDone(Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;)Z
    .locals 8
    .param p1    # Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->$jacocoInit()[Z

    move-result-object v4

    .line 115
    if-nez p1, :cond_0

    const/16 v5, 0x1e

    aput-boolean v3, v4, v5

    .line 128
    .local v0, "fromAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .local v1, "toAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :goto_0
    return v2

    .line 117
    .end local v0    # "fromAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    .end local v1    # "toAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    :cond_0
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getFromAccountId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->read(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 118
    .restart local v0    # "fromAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    iget-object v5, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getToAccountId()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->read(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;

    .line 120
    .restart local v1    # "toAccount":Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;
    if-nez v0, :cond_1

    const/16 v5, 0x1f

    aput-boolean v3, v4, v5

    :goto_1
    const/16 v5, 0x21

    aput-boolean v3, v4, v5

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/16 v5, 0x20

    aput-boolean v3, v4, v5

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getFullFromAmount()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->take(D)V

    .line 123
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Transfer;->getFullToAmount()D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/blogspot/e_kanivets/moneytracker/entity/data/Account;->put(D)V

    .line 125
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v2, v0}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lcom/blogspot/e_kanivets/moneytracker/controller/data/AccountController;->repo:Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;

    invoke-interface {v2, v1}, Lcom/blogspot/e_kanivets/moneytracker/repo/base/IRepo;->update(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/16 v2, 0x22

    aput-boolean v3, v4, v2

    move v2, v3

    goto :goto_0
.end method
