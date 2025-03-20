.class public interface abstract Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/impl/converter/StatisticsConverterService;
.super Ljava/lang/Object;
.source "StatisticsConverterService.java"

# interfaces
.implements Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/context/ContextSetter;


# virtual methods
.method public abstract convertEntityToItem(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/business/domain/StatisticEntryItem;)V
.end method

.method public abstract convertItemToEntity(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/product/business/domain/ProductItem;Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/statistics/persistence/entity/StatisticEntryEntity;)V
.end method

.method public abstract getDateTimeFromString(Ljava/lang/String;)Lorg/joda/time/DateTime;
.end method

.method public abstract getDayFromDate(Ljava/util/Date;)Ljava/lang/String;
.end method

.method public abstract getMonthFromDate(Ljava/util/Date;)Ljava/lang/String;
.end method

.method public abstract getStringAsDouble(Ljava/lang/String;)Ljava/lang/Double;
.end method

.method public abstract getStringFromDate(Ljava/util/Date;)Ljava/lang/String;
.end method
