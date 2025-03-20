.class Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;
.super Ljava/lang/Object;
.source "ActionBarViewWrapper.java"


# instance fields
.field private mAbsActionBarViewClass:Ljava/lang/Class;

.field private mActionBarView:Landroid/view/ViewParent;

.field private mActionBarViewClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/view/ViewParent;)V
    .locals 5
    .param p1, "actionBarView"    # Landroid/view/ViewParent;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionBarView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "previousP":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "throwP":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActionBarView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find ActionBarView for Activity, instead found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    .end local v0    # "previousP":Ljava/lang/String;
    .end local v1    # "throwP":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarViewClass:Ljava/lang/Class;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mAbsActionBarViewClass:Ljava/lang/Class;

    .line 50
    return-void
.end method

.method private getMediaRouteButton(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 139
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mActionView"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 140
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    .local v2, "view":Ljava/lang/Object;
    const-string v3, "android.support.v7.app.MediaRouteButton"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "view":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 150
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getActionItem(I)Landroid/view/View;
    .locals 15
    .param p1, "actionItemId"    # I

    .prologue
    .line 155
    :try_start_0
    iget-object v13, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mAbsActionBarViewClass:Ljava/lang/Class;

    const-string v14, "mActionMenuPresenter"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 156
    .local v2, "actionMenuPresenterField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    iget-object v13, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 159
    .local v1, "actionMenuPresenter":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mMenuView"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 160
    .local v11, "menuViewField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 164
    .local v10, "menuView":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.actionbarsherlock"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 167
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mChildren"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 176
    .local v8, "mChField":Ljava/lang/reflect/Field;
    :goto_0
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 177
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 178
    .local v9, "mChs":[Ljava/lang/Object;
    move-object v3, v9

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v7, v3, v5

    .line 179
    .local v7, "mCh":Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 180
    move-object v0, v7

    check-cast v0, Landroid/view/View;

    move-object v12, v0

    .line 181
    .local v12, "v":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_2

    .line 191
    .end local v1    # "actionMenuPresenter":Ljava/lang/Object;
    .end local v2    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mCh":Ljava/lang/Object;
    .end local v8    # "mChField":Ljava/lang/reflect/Field;
    .end local v9    # "mChs":[Ljava/lang/Object;
    .end local v10    # "menuView":Ljava/lang/Object;
    .end local v11    # "menuViewField":Ljava/lang/reflect/Field;
    .end local v12    # "v":Landroid/view/View;
    :goto_2
    return-object v12

    .line 169
    .restart local v1    # "actionMenuPresenter":Ljava/lang/Object;
    .restart local v2    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .restart local v10    # "menuView":Ljava/lang/Object;
    .restart local v11    # "menuViewField":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "android.support.v7"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 170
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mChildren"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .restart local v8    # "mChField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 173
    .end local v8    # "mChField":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "mChildren"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .restart local v8    # "mChField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 178
    .restart local v3    # "arr$":[Ljava/lang/Object;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "mCh":Ljava/lang/Object;
    .restart local v9    # "mChs":[Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 186
    .end local v1    # "actionMenuPresenter":Ljava/lang/Object;
    .end local v2    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "mCh":Ljava/lang/Object;
    .end local v8    # "mChField":Ljava/lang/reflect/Field;
    .end local v9    # "mChs":[Ljava/lang/Object;
    .end local v10    # "menuView":Ljava/lang/Object;
    .end local v11    # "menuViewField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    .line 187
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 191
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    :goto_3
    const/4 v12, 0x0

    goto :goto_2

    .line 188
    :catch_1
    move-exception v4

    .line 189
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_3
.end method

.method public getMediaRouterButtonView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 109
    :try_start_0
    iget-object v9, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarViewClass:Ljava/lang/Class;

    const-string v10, "mOptionsMenu"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 111
    .local v2, "actionMenuPresenterField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 112
    iget-object v9, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 114
    .local v6, "optionsMenu":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "mActionItems"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 115
    .local v1, "actionItemsField":Ljava/lang/reflect/Field;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 117
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 118
    .local v0, "actionItems":Ljava/util/List;
    if-eqz v0, :cond_1

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 120
    .local v5, "obj":Ljava/lang/Object;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0, v5}, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->getMediaRouteButton(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 122
    .local v7, "view":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 123
    check-cast v7, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .end local v0    # "actionItems":Ljava/util/List;
    .end local v1    # "actionItemsField":Ljava/lang/reflect/Field;
    .end local v2    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "optionsMenu":Ljava/lang/Object;
    .end local v7    # "view":Ljava/lang/Object;
    :goto_0
    return-object v7

    .restart local v0    # "actionItems":Ljava/util/List;
    .restart local v1    # "actionItemsField":Ljava/lang/reflect/Field;
    .restart local v2    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .restart local v6    # "optionsMenu":Ljava/lang/Object;
    :cond_1
    move-object v7, v8

    .line 128
    goto :goto_0

    .line 129
    .end local v0    # "actionItems":Ljava/util/List;
    .end local v1    # "actionItemsField":Ljava/lang/reflect/Field;
    .end local v2    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .end local v6    # "optionsMenu":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    move-object v7, v8

    .line 134
    goto :goto_0

    .line 131
    :catch_1
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public getOverflowView()Landroid/view/View;
    .locals 6

    .prologue
    .line 89
    :try_start_0
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mAbsActionBarViewClass:Ljava/lang/Class;

    const-string v5, "mActionMenuPresenter"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 90
    .local v1, "actionMenuPresenterField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    iget-object v4, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "actionMenuPresenter":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mOverflowButton"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 93
    .local v3, "overflowButtonField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .end local v0    # "actionMenuPresenter":Ljava/lang/Object;
    .end local v1    # "actionMenuPresenterField":Ljava/lang/reflect/Field;
    .end local v3    # "overflowButtonField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v4

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 100
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 97
    :catch_1
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public getSpinnerView()Landroid/view/View;
    .locals 4

    .prologue
    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarViewClass:Ljava/lang/Class;

    const-string v3, "mSpinner"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 58
    .local v1, "spinnerField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    .end local v1    # "spinnerField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "TAG"

    const-string v3, "Failed to find actionbar spinner"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TAG"

    const-string v3, "Failed to access actionbar spinner"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getTitleView()Landroid/view/View;
    .locals 4

    .prologue
    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarViewClass:Ljava/lang/Class;

    const-string v3, "mTitleView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 74
    .local v1, "mTitleViewField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    iget-object v2, p0, Lcom/github/amlcurran/showcaseview/targets/ActionBarViewWrapper;->mActionBarView:Landroid/view/ViewParent;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .end local v1    # "mTitleViewField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "TAG"

    const-string v3, "Failed to find actionbar title"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TAG"

    const-string v3, "Failed to access actionbar title"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
