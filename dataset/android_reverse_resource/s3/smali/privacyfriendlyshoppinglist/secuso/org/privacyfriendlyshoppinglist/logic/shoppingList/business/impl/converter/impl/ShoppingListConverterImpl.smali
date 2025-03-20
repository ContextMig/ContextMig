.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;
.super Ljava/lang/Object;
.source "ShoppingListConverterImpl.java"

# interfaces
.implements Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/ShoppingListConverter;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final SPACE:Ljava/lang/String; = " "


# instance fields
.field private context:Landroid/content/Context;

.field private dateLongPattern:Ljava/lang/String;

.field private datePattern:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private timePattern:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x3afcc1f3c014dbd6L    # 1.4867343966696837E-24

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl"

    const/16 v3, 0x3a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getIdAsLong(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Long;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->$jacocoInit()[Z

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x36

    aput-boolean v3, v1, v2

    .line 136
    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x37

    aput-boolean v3, v1, v2

    :goto_0
    const/16 v2, 0x39

    aput-boolean v3, v1, v2

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/16 v2, 0x38

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method private setReminder(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x17

    aput-boolean v2, v0, v1

    .line 89
    :goto_0
    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    return-void

    .line 70
    :cond_0
    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    .line 72
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isReminderEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 74
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    .line 76
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderCount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setReminderCount(Ljava/lang/Integer;)V

    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    .line 87
    :goto_1
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getReminderUnit()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setReminderUnit(Ljava/lang/Integer;)V

    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setReminderCount(Ljava/lang/Integer;)V

    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    goto :goto_1

    .line 85
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setReminderCount(Ljava/lang/Integer;)V

    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    goto :goto_1
.end method


# virtual methods
.method public convertEntityToItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 94
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setId(Ljava/lang/String;)V

    const/16 v1, 0x20

    aput-boolean v5, v0, v1

    .line 95
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getListName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setListName(Ljava/lang/String;)V

    const/16 v1, 0x21

    aput-boolean v5, v0, v1

    .line 96
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getStatisticsEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setStatisticEnabled(Z)V

    const/16 v1, 0x22

    aput-boolean v5, v0, v1

    .line 98
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getSortCriteria()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x23

    aput-boolean v5, v0, v1

    .line 100
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getSortCriteria()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setSortCriteria(Ljava/lang/String;)V

    const/16 v1, 0x24

    aput-boolean v5, v0, v1

    .line 101
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getSortAscending()Z

    move-result v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setSortAscending(Z)V

    const/16 v1, 0x25

    aput-boolean v5, v0, v1

    .line 109
    :goto_0
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getDeadline()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v1, 0x28

    aput-boolean v5, v0, v1

    .line 111
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getDeadline()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->datePattern:Ljava/lang/String;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->language:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateAsString(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    aput-boolean v5, v0, v2

    .line 112
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getDeadline()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->timePattern:Ljava/lang/String;

    iget-object v4, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->language:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateAsString(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a

    aput-boolean v5, v0, v3

    .line 113
    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setDeadlineDate(Ljava/lang/String;)V

    const/16 v1, 0x2b

    aput-boolean v5, v0, v1

    .line 114
    invoke-virtual {p2, v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setDeadlineTime(Ljava/lang/String;)V

    .line 115
    const/16 v1, 0x2c

    aput-boolean v5, v0, v1

    .line 122
    :goto_1
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getReminderCount()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_2

    const/16 v1, 0x2f

    aput-boolean v5, v0, v1

    .line 128
    :goto_2
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getIcon()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setIcon(I)V

    const/16 v1, 0x33

    aput-boolean v5, v0, v1

    .line 129
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setNotes(Ljava/lang/String;)V

    const/16 v1, 0x34

    aput-boolean v5, v0, v1

    .line 130
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getPriority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setPriority(Ljava/lang/String;)V

    .line 131
    const/16 v1, 0x35

    aput-boolean v5, v0, v1

    return-void

    .line 105
    :cond_0
    const-string v1, "sort.by.name"

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setSortCriteria(Ljava/lang/String;)V

    const/16 v1, 0x26

    aput-boolean v5, v0, v1

    .line 106
    invoke-virtual {p2, v5}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setSortAscending(Z)V

    const/16 v1, 0x27

    aput-boolean v5, v0, v1

    goto/16 :goto_0

    .line 118
    :cond_1
    const-string v1, ""

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setDeadlineDate(Ljava/lang/String;)V

    const/16 v1, 0x2d

    aput-boolean v5, v0, v1

    .line 119
    const-string v1, ""

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setDeadlineTime(Ljava/lang/String;)V

    const/16 v1, 0x2e

    aput-boolean v5, v0, v1

    goto :goto_1

    .line 122
    :cond_2
    const/16 v1, 0x30

    aput-boolean v5, v0, v1

    .line 124
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getReminderCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setReminderCount(Ljava/lang/String;)V

    const/16 v1, 0x31

    aput-boolean v5, v0, v1

    .line 125
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->getReminderUnit()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->setReminderUnit(Ljava/lang/String;)V

    const/16 v1, 0x32

    aput-boolean v5, v0, v1

    goto :goto_2
.end method

.method public convertItemToEntity(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-direct {p0, p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->getIdAsLong(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-boolean v4, v0, v2

    .line 44
    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setId(Ljava/lang/Long;)V

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 45
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getListName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setListName(Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-boolean v4, v0, v1

    .line 46
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isSortAscending()Z

    move-result v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setSortAscending(Z)V

    const/16 v1, 0x9

    aput-boolean v4, v0, v1

    .line 47
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getSortCriteria()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setSortCriteria(Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    .line 48
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->isStatisticEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setStatisticsEnabled(Z)V

    const/16 v1, 0xb

    aput-boolean v4, v0, v1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getDeadlineTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-boolean v4, v0, v2

    .line 51
    const-string v2, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xd

    aput-boolean v4, v0, v2

    .line 53
    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->dateLongPattern:Ljava/lang/String;

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->language:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object v1

    const/16 v2, 0xe

    aput-boolean v4, v0, v2

    .line 54
    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setDeadline(Ljava/util/Date;)V

    const/16 v1, 0xf

    aput-boolean v4, v0, v1

    .line 55
    invoke-direct {p0, p1, p2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->setReminder(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)V

    .line 56
    const/16 v1, 0x10

    aput-boolean v4, v0, v1

    .line 63
    :goto_0
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getIcon()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setIcon(Ljava/lang/Integer;)V

    const/16 v1, 0x14

    aput-boolean v4, v0, v1

    .line 64
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setNotes(Ljava/lang/String;)V

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    .line 65
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/domain/ListItem;->getPriority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setPriority(Ljava/lang/String;)V

    .line 66
    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    return-void

    .line 59
    :cond_0
    invoke-virtual {p2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setDeadline(Ljava/util/Date;)V

    const/16 v1, 0x11

    aput-boolean v4, v0, v1

    .line 60
    invoke-virtual {p2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setReminderCount(Ljava/lang/Integer;)V

    const/16 v1, 0x12

    aput-boolean v4, v0, v1

    .line 61
    invoke-virtual {p2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;->setReminderUnit(Ljava/lang/Integer;)V

    const/16 v1, 0x13

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/persistence/DB;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->$jacocoInit()[Z

    move-result-object v0

    .line 33
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->context:Landroid/content/Context;

    aput-boolean v3, v0, v3

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->language:Ljava/lang/String;

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->dateLongPattern:Ljava/lang/String;

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->datePattern:Ljava/lang/String;

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/business/impl/converter/impl/ShoppingListConverterImpl;->timePattern:Ljava/lang/String;

    .line 38
    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    return-void
.end method
