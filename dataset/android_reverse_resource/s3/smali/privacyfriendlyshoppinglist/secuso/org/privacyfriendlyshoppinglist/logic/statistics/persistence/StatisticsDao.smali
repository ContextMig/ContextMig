.class public interface abstract Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/StatisticsDao;
.super Ljava/lang/Object;
.source "StatisticsDao.java"

# interfaces
.implements Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/ContextSetter;


# virtual methods
.method public abstract deleteById(Ljava/lang/Long;)Ljava/lang/Boolean;
.end method

.method public abstract getAllEntities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getById(Ljava/lang/Long;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;
.end method

.method public abstract save(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)Ljava/lang/Long;
.end method
