.class public interface abstract Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/ShoppingListDao;
.super Ljava/lang/Object;
.source "ShoppingListDao.java"

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
            "Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getById(Ljava/lang/Long;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;
.end method

.method public abstract save(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/logic/shoppingList/persistence/entity/ShoppingListEntity;)Ljava/lang/Long;
.end method
