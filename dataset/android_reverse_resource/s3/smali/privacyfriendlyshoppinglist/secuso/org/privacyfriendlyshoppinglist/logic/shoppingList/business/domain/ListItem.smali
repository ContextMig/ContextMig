.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;
.super Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;
.source "ListItem.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private deadlineDate:Ljava/lang/String;

.field private deadlineTime:Ljava/lang/String;

.field private icon:I

.field private listName:Ljava/lang/String;

.field private notes:Ljava/lang/String;

.field private priority:Ljava/lang/String;

.field private reminderCount:Ljava/lang/String;

.field private reminderEnabled:Z

.field private reminderUnit:Ljava/lang/String;

.field private selected:Z

.field private sortAscending:Z

.field private sortCriteria:Ljava/lang/String;

.field private statisticEnabled:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6fa02859e2548ea3L    # -8.204059878039381E-230

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem"

    const/16 v3, 0x96

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    invoke-direct {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/business/AbstractItem;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v2

    .line 213
    if-ne p0, p1, :cond_0

    const/16 v0, 0x43

    aput-boolean v1, v2, v0

    move v0, v1

    .line 235
    :goto_0
    return v0

    .line 214
    :cond_0
    if-nez p1, :cond_1

    const/16 v3, 0x44

    aput-boolean v1, v2, v3

    :goto_1
    const/16 v3, 0x46

    aput-boolean v1, v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    const/16 v3, 0x45

    aput-boolean v1, v2, v3

    goto :goto_1

    .line 216
    :cond_2
    check-cast p1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;

    const/16 v3, 0x47

    aput-boolean v1, v2, v3

    .line 218
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getIcon()I

    move-result v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getIcon()I

    move-result v4

    if-eq v3, v4, :cond_3

    const/16 v3, 0x48

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 219
    :cond_3
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSelected()Z

    move-result v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSelected()Z

    move-result v4

    if-eq v3, v4, :cond_4

    const/16 v3, 0x49

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 220
    :cond_4
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSortAscending()Z

    move-result v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSortAscending()Z

    move-result v4

    if-eq v3, v4, :cond_5

    const/16 v3, 0x4a

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 221
    :cond_5
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isReminderEnabled()Z

    move-result v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isReminderEnabled()Z

    move-result v4

    if-eq v3, v4, :cond_6

    const/16 v3, 0x4b

    aput-boolean v1, v2, v3

    goto :goto_0

    .line 222
    :cond_6
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x4c

    aput-boolean v1, v2, v3

    .line 224
    :goto_2
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x51

    aput-boolean v1, v2, v3

    .line 226
    :goto_3
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v3, 0x56

    aput-boolean v1, v2, v3

    .line 228
    :goto_4
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineTime()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v3, 0x5b

    aput-boolean v1, v2, v3

    .line 230
    :goto_5
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/16 v3, 0x60

    aput-boolean v1, v2, v3

    .line 231
    :goto_6
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getSortCriteria()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getSortCriteria()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getSortCriteria()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v3, 0x65

    aput-boolean v1, v2, v3

    .line 233
    :goto_7
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0x6a

    aput-boolean v1, v2, v3

    .line 235
    :goto_8
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderUnit()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderUnit()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x6f

    aput-boolean v1, v2, v3

    :goto_9
    const/16 v3, 0x72

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 222
    :cond_7
    const/16 v3, 0x4d

    aput-boolean v1, v2, v3

    .line 223
    :goto_a
    const/16 v3, 0x50

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 222
    :cond_8
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    const/16 v3, 0x4e

    aput-boolean v1, v2, v3

    goto/16 :goto_2

    :cond_9
    const/16 v3, 0x4f

    aput-boolean v1, v2, v3

    goto :goto_a

    .line 224
    :cond_a
    const/16 v3, 0x52

    aput-boolean v1, v2, v3

    .line 225
    :goto_b
    const/16 v3, 0x55

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 224
    :cond_b
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    const/16 v3, 0x53

    aput-boolean v1, v2, v3

    goto/16 :goto_3

    :cond_c
    const/16 v3, 0x54

    aput-boolean v1, v2, v3

    goto :goto_b

    .line 226
    :cond_d
    const/16 v3, 0x57

    aput-boolean v1, v2, v3

    .line 227
    :goto_c
    const/16 v3, 0x5a

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 226
    :cond_e
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    const/16 v3, 0x58

    aput-boolean v1, v2, v3

    goto/16 :goto_4

    :cond_f
    const/16 v3, 0x59

    aput-boolean v1, v2, v3

    goto :goto_c

    .line 228
    :cond_10
    const/16 v3, 0x5c

    aput-boolean v1, v2, v3

    .line 229
    :goto_d
    const/16 v3, 0x5f

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 228
    :cond_11
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineTime()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    const/16 v3, 0x5d

    aput-boolean v1, v2, v3

    goto/16 :goto_5

    :cond_12
    const/16 v3, 0x5e

    aput-boolean v1, v2, v3

    goto :goto_d

    .line 230
    :cond_13
    const/16 v3, 0x61

    aput-boolean v1, v2, v3

    :goto_e
    const/16 v3, 0x64

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_15

    const/16 v3, 0x62

    aput-boolean v1, v2, v3

    goto/16 :goto_6

    :cond_15
    const/16 v3, 0x63

    aput-boolean v1, v2, v3

    goto :goto_e

    .line 231
    :cond_16
    const/16 v3, 0x66

    aput-boolean v1, v2, v3

    .line 232
    :goto_f
    const/16 v3, 0x69

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 231
    :cond_17
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getSortCriteria()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18

    const/16 v3, 0x67

    aput-boolean v1, v2, v3

    goto/16 :goto_7

    :cond_18
    const/16 v3, 0x68

    aput-boolean v1, v2, v3

    goto :goto_f

    .line 233
    :cond_19
    const/16 v3, 0x6b

    aput-boolean v1, v2, v3

    .line 234
    :goto_10
    const/16 v3, 0x6e

    aput-boolean v1, v2, v3

    goto/16 :goto_0

    .line 233
    :cond_1a
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1b

    const/16 v3, 0x6c

    aput-boolean v1, v2, v3

    goto/16 :goto_8

    :cond_1b
    const/16 v3, 0x6d

    aput-boolean v1, v2, v3

    goto :goto_10

    .line 235
    :cond_1c
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderUnit()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1d

    const/16 v0, 0x70

    aput-boolean v1, v2, v0

    move v0, v1

    goto/16 :goto_9

    :cond_1d
    const/16 v3, 0x71

    aput-boolean v1, v2, v3

    goto/16 :goto_9
.end method

.method public getDeadlineDate()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 61
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->deadlineDate:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDeadlineTime()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->deadlineTime:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getDetailInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v4

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0002

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x1b

    aput-boolean v3, v4, v1

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0900a0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x1c

    aput-boolean v3, v4, v1

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f09002e

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v1, 0x1d

    aput-boolean v3, v4, v1

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f09006e

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0x1e

    aput-boolean v3, v4, v1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->statisticEnabled:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1f

    aput-boolean v3, v4, v1

    move v1, v2

    :goto_0
    const/16 v9, 0x21

    aput-boolean v3, v4, v9

    .line 169
    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    aput-boolean v3, v4, v1

    .line 170
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    aput-boolean v3, v4, v1

    .line 172
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x24

    aput-boolean v3, v4, v5

    .line 173
    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v1, 0x25

    aput-boolean v3, v4, v1

    .line 182
    :goto_1
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2d

    aput-boolean v3, v4, v1

    .line 191
    :goto_2
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x35

    aput-boolean v3, v4, v1

    .line 199
    :goto_3
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x3c

    aput-boolean v3, v4, v1

    .line 207
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x42

    aput-boolean v3, v4, v2

    return-object v1

    .line 168
    :cond_0
    const/16 v1, 0x20

    aput-boolean v3, v4, v1

    move v1, v3

    goto :goto_0

    .line 173
    :cond_1
    const/16 v5, 0x26

    aput-boolean v3, v4, v5

    .line 175
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x27

    aput-boolean v3, v4, v5

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v9, 0x7f0a0000

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/16 v9, 0x28

    aput-boolean v3, v4, v9

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v5, v1

    const/16 v5, 0x29

    aput-boolean v3, v4, v5

    .line 178
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2a

    aput-boolean v3, v4, v5

    .line 179
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2b

    aput-boolean v3, v4, v5

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    aput-boolean v3, v4, v1

    goto :goto_1

    .line 182
    :cond_2
    const/16 v1, 0x2e

    aput-boolean v3, v4, v1

    .line 184
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    aput-boolean v3, v4, v1

    .line 185
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    aput-boolean v3, v4, v1

    .line 186
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x31

    aput-boolean v3, v4, v1

    .line 187
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    aput-boolean v3, v4, v1

    .line 188
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x33

    aput-boolean v3, v4, v1

    .line 189
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x34

    aput-boolean v3, v4, v1

    goto/16 :goto_2

    .line 191
    :cond_3
    const/16 v1, 0x36

    aput-boolean v3, v4, v1

    .line 193
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x37

    aput-boolean v3, v4, v1

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0a0001

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x38

    aput-boolean v3, v4, v5

    .line 195
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderUnit()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v1, v1, v5

    const/16 v5, 0x39

    aput-boolean v3, v4, v5

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900af

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v2

    aput-object v1, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    aput-boolean v3, v4, v2

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    aput-boolean v3, v4, v1

    goto/16 :goto_3

    .line 199
    :cond_4
    const/16 v1, 0x3d

    aput-boolean v3, v4, v1

    .line 201
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    aput-boolean v3, v4, v1

    .line 202
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    aput-boolean v3, v4, v1

    .line 203
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    aput-boolean v3, v4, v1

    .line 204
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x41

    aput-boolean v3, v4, v1

    goto/16 :goto_4
.end method

.method public getIcon()I
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 51
    iget v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->icon:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getListName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->listName:Ljava/lang/String;

    aput-boolean v2, v0, v2

    return-object v1
.end method

.method public getNotes()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->notes:Ljava/lang/String;

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getPriority()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->priority:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getReminderCount()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 121
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->reminderCount:Ljava/lang/String;

    const/16 v2, 0x13

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getReminderUnit()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 131
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->reminderUnit:Ljava/lang/String;

    const/16 v2, 0x15

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public getSortCriteria()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 111
    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->sortCriteria:Ljava/lang/String;

    const/16 v2, 0x11

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v4

    .line 242
    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v5, 0x73

    aput-boolean v3, v4, v5

    :goto_0
    const/16 v5, 0x75

    aput-boolean v3, v4, v5

    .line 243
    mul-int/lit8 v5, v1, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x76

    aput-boolean v3, v4, v6

    :goto_1
    add-int v0, v5, v1

    .local v0, "result":I
    const/16 v1, 0x78

    aput-boolean v3, v4, v1

    .line 244
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getIcon()I

    move-result v5

    add-int v0, v1, v5

    const/16 v1, 0x79

    aput-boolean v3, v4, v1

    .line 245
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x7a

    aput-boolean v3, v4, v6

    :goto_2
    add-int v0, v5, v1

    const/16 v1, 0x7c

    aput-boolean v3, v4, v1

    .line 246
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x7d

    aput-boolean v3, v4, v6

    :goto_3
    add-int v0, v5, v1

    const/16 v1, 0x7f

    aput-boolean v3, v4, v1

    .line 247
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x80

    aput-boolean v3, v4, v6

    :goto_4
    add-int v0, v5, v1

    const/16 v1, 0x82

    aput-boolean v3, v4, v1

    .line 248
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x83

    aput-boolean v3, v4, v1

    move v1, v3

    :goto_5
    add-int v0, v5, v1

    const/16 v1, 0x85

    aput-boolean v3, v4, v1

    .line 249
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSortAscending()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x86

    aput-boolean v3, v4, v1

    move v1, v3

    :goto_6
    add-int v0, v5, v1

    const/16 v1, 0x88

    aput-boolean v3, v4, v1

    .line 250
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getSortCriteria()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getSortCriteria()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x89

    aput-boolean v3, v4, v6

    :goto_7
    add-int v0, v5, v1

    const/16 v1, 0x8b

    aput-boolean v3, v4, v1

    .line 251
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isReminderEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8c

    aput-boolean v3, v4, v1

    move v1, v3

    :goto_8
    add-int v0, v5, v1

    const/16 v1, 0x8e

    aput-boolean v3, v4, v1

    .line 252
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v6, 0x8f

    aput-boolean v3, v4, v6

    :goto_9
    add-int v0, v5, v1

    const/16 v1, 0x91

    aput-boolean v3, v4, v1

    .line 253
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderUnit()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x92

    aput-boolean v3, v4, v5

    :goto_a
    add-int v0, v1, v2

    .line 254
    const/16 v1, 0x94

    aput-boolean v3, v4, v1

    return v0

    .line 242
    .end local v0    # "result":I
    :cond_0
    const/16 v1, 0x74

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_0

    .line 243
    :cond_1
    const/16 v1, 0x77

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_1

    .line 245
    .restart local v0    # "result":I
    :cond_2
    const/16 v1, 0x7b

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_2

    .line 246
    :cond_3
    const/16 v1, 0x7e

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_3

    .line 247
    :cond_4
    const/16 v1, 0x81

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_4

    .line 248
    :cond_5
    const/16 v1, 0x84

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_5

    .line 249
    :cond_6
    const/16 v1, 0x87

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_6

    .line 250
    :cond_7
    const/16 v1, 0x8a

    aput-boolean v3, v4, v1

    move v1, v2

    goto/16 :goto_7

    .line 251
    :cond_8
    const/16 v1, 0x8d

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_8

    .line 252
    :cond_9
    const/16 v1, 0x90

    aput-boolean v3, v4, v1

    move v1, v2

    goto :goto_9

    .line 253
    :cond_a
    const/16 v5, 0x93

    aput-boolean v3, v4, v5

    goto :goto_a
.end method

.method public isReminderEnabled()Z
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 141
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->reminderEnabled:Z

    const/16 v2, 0x17

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isSelected()Z
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->selected:Z

    const/16 v2, 0xd

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isSortAscending()Z
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 101
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->sortAscending:Z

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public isStatisticEnabled()Z
    .locals 4

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 151
    iget-boolean v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->statisticEnabled:Z

    const/16 v2, 0x19

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public setDeadlineDate(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->deadlineDate:Ljava/lang/String;

    .line 67
    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setDeadlineTime(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->deadlineTime:Ljava/lang/String;

    .line 77
    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setIcon(I)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iput p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->icon:I

    .line 57
    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setListName(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 36
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->listName:Ljava/lang/String;

    .line 37
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->notes:Ljava/lang/String;

    .line 87
    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->priority:Ljava/lang/String;

    .line 47
    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setReminderCount(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 126
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->reminderCount:Ljava/lang/String;

    .line 127
    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setReminderEnabled(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 146
    iput-boolean p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->reminderEnabled:Z

    .line 147
    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setReminderUnit(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 136
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->reminderUnit:Ljava/lang/String;

    .line 137
    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    iput-boolean p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->selected:Z

    .line 97
    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSortAscending(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 106
    iput-boolean p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->sortAscending:Z

    .line 107
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setSortCriteria(Ljava/lang/String;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 116
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->sortCriteria:Ljava/lang/String;

    .line 117
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public setStatisticEnabled(Z)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 156
    iput-boolean p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->statisticEnabled:Z

    .line 157
    const/16 v1, 0x1a

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->$jacocoInit()[Z

    move-result-object v0

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListItem{listName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->listName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->priority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->icon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deadlineDate=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->deadlineDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deadlineTime=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->deadlineTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notes=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->notes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->selected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sortAscending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->sortAscending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sortCriteria=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->sortCriteria:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reminderEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->reminderEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statisticEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->statisticEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reminderCount=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->reminderCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reminderUnit=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->reminderUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x95

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
