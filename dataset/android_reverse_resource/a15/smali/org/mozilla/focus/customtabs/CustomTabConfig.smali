.class public Lorg/mozilla/focus/customtabs/CustomTabConfig;
.super Ljava/lang/Object;
.source "CustomTabConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;,
        Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;
    }
.end annotation


# instance fields
.field public final actionButtonConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;

.field public final closeButtonIcon:Landroid/graphics/Bitmap;

.field public final disableUrlbarHiding:Z

.field public final id:Ljava/lang/String;

.field public final menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public final showShareMenuItem:Z

.field public final toolbarColor:Ljava/lang/Integer;

.field private final unsupportedFeatureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;ZLorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;ZLjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "toolbarColor"    # Ljava/lang/Integer;
    .param p3, "closeButtonIcon"    # Landroid/graphics/Bitmap;
    .param p4, "disableUrlbarHiding"    # Z
    .param p5, "actionButtonConfig"    # Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;
    .param p6, "showShareMenuItem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p7, "menuItems":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;>;"
    .local p8, "unsupportedFeatureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->id:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->toolbarColor:Ljava/lang/Integer;

    .line 82
    iput-object p3, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->closeButtonIcon:Landroid/graphics/Bitmap;

    .line 83
    iput-boolean p4, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->disableUrlbarHiding:Z

    .line 84
    iput-object p5, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->actionButtonConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;

    .line 85
    iput-boolean p6, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->showShareMenuItem:Z

    .line 86
    iput-object p7, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->menuItems:Ljava/util/List;

    .line 87
    iput-object p8, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->unsupportedFeatureList:Ljava/util/List;

    .line 88
    return-void
.end method

.method static getActionButtonConfig(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Lmozilla/components/support/utils/SafeIntent;

    .prologue
    const/4 v6, 0x0

    .line 117
    const-string v7, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {p1, v7}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 153
    :goto_0
    return-object v6

    .line 121
    :cond_0
    const-string v7, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-virtual {p1, v7}, Lmozilla/components/support/utils/SafeIntent;->getBundleExtra(Ljava/lang/String;)Lmozilla/components/support/utils/SafeBundle;

    move-result-object v0

    .line 123
    .local v0, "actionButtonBundle":Lmozilla/components/support/utils/SafeBundle;
    const-string v7, "android.support.customtabs.customaction.DESCRIPTION"

    invoke-virtual {v0, v7}, Lmozilla/components/support/utils/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "description":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 125
    const-string v7, "CustomTabConfig"

    const-string v8, "Ignoring EXTRA_ACTION_BUTTON_BUNDLE due to missing description"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_1
    const-string v7, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-virtual {v0, v7}, Lmozilla/components/support/utils/SafeBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 132
    .local v5, "pendingIntentParcelable":Landroid/os/Parcelable;
    instance-of v7, v5, Landroid/app/PendingIntent;

    if-eqz v7, :cond_2

    move-object v4, v5

    .line 133
    check-cast v4, Landroid/app/PendingIntent;

    .line 142
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string v7, "android.support.customtabs.customaction.ICON"

    invoke-virtual {v0, v7}, Lmozilla/components/support/utils/SafeBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 146
    .local v3, "iconParcelable":Landroid/os/Parcelable;
    instance-of v7, v3, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    move-object v2, v3

    .line 147
    check-cast v2, Landroid/graphics/Bitmap;

    .line 153
    .local v2, "icon":Landroid/graphics/Bitmap;
    new-instance v6, Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;

    invoke-direct {v6, v1, v2, v4}, Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 135
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "iconParcelable":Landroid/os/Parcelable;
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    const-string v7, "CustomTabConfig"

    const-string v8, "Ignoring EXTRA_ACTION_BUTTON_BUNDLE due to missing pendingIntent"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .restart local v3    # "iconParcelable":Landroid/os/Parcelable;
    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    const-string v7, "CustomTabConfig"

    const-string v8, "Ignoring EXTRA_ACTION_BUTTON_BUNDLE due to missing icon"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getCloseButtonIcon(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Lmozilla/components/support/utils/SafeIntent;

    .prologue
    const/4 v3, 0x0

    .line 95
    const-string v4, "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

    invoke-virtual {p1, v4}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v3

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    const-string v4, "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

    invoke-virtual {p1, v4}, Lmozilla/components/support/utils/SafeIntent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 100
    .local v1, "closeButtonParcelable":Landroid/os/Parcelable;
    instance-of v4, v1, Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    move-object v0, v3

    .line 101
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 104
    check-cast v0, Landroid/graphics/Bitmap;

    .line 105
    .local v0, "candidateIcon":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070056

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 107
    .local v2, "maxSize":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-gt v4, v2, :cond_3

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 111
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v3

    .line 112
    goto :goto_0
.end method

.method public static isCustomTabIntent(Lmozilla/components/support/utils/SafeIntent;)Z
    .locals 1
    .param p0, "intent"    # Lmozilla/components/support/utils/SafeIntent;

    .prologue
    .line 91
    const-string v0, "android.support.customtabs.extra.SESSION"

    invoke-virtual {p0, v0}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static parseCustomTabIntent(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)Lorg/mozilla/focus/customtabs/CustomTabConfig;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Lmozilla/components/support/utils/SafeIntent;

    .prologue
    .line 157
    const-string v2, "org.mozilla.focus.custom-tab-id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v18, "This custom tab intent  has no ID assigned"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_0
    const-string v2, "org.mozilla.focus.custom-tab-id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "id":Ljava/lang/String;
    const/4 v4, 0x0

    .line 164
    .local v4, "toolbarColor":Ljava/lang/Integer;
    const-string v2, "android.support.customtabs.extra.TOOLBAR_COLOR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    const-string v2, "android.support.customtabs.extra.TOOLBAR_COLOR"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lmozilla/components/support/utils/SafeIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 168
    :cond_1
    invoke-static/range {p0 .. p1}, Lorg/mozilla/focus/customtabs/CustomTabConfig;->getCloseButtonIcon(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 174
    .local v5, "closeButtonIcon":Landroid/graphics/Bitmap;
    const-string v2, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lmozilla/components/support/utils/SafeIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v6, 0x1

    .line 176
    .local v6, "disableUrlbarHiding":Z
    :goto_0
    invoke-static/range {p0 .. p1}, Lorg/mozilla/focus/customtabs/CustomTabConfig;->getActionButtonConfig(Landroid/content/Context;Lmozilla/components/support/utils/SafeIntent;)Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;

    move-result-object v7

    .line 180
    .local v7, "actionButtonConfig":Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;
    const-string v2, "android.support.customtabs.extra.SHARE_MENU_ITEM"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lmozilla/components/support/utils/SafeIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 186
    .local v8, "showShareMenuItem":Z
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 187
    .local v9, "menuItems":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;>;"
    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 192
    const-string v2, "android.support.customtabs.extra.MENU_ITEMS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 194
    .local v13, "menuItemBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 195
    .local v12, "bundleObject":Ljava/lang/Object;
    instance-of v0, v12, Landroid/os/Bundle;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 200
    new-instance v11, Lmozilla/components/support/utils/SafeBundle;

    check-cast v12, Landroid/os/Bundle;

    .end local v12    # "bundleObject":Ljava/lang/Object;
    invoke-direct {v11, v12}, Lmozilla/components/support/utils/SafeBundle;-><init>(Landroid/os/Bundle;)V

    .line 202
    .local v11, "bundle":Lmozilla/components/support/utils/SafeBundle;
    const-string v18, "android.support.customtabs.customaction.MENU_ITEM_TITLE"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lmozilla/components/support/utils/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 204
    .local v14, "name":Ljava/lang/String;
    const-string v18, "android.support.customtabs.customaction.PENDING_INTENT"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lmozilla/components/support/utils/SafeBundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    .line 205
    .local v15, "parcelableIntent":Landroid/os/Parcelable;
    instance-of v0, v15, Landroid/app/PendingIntent;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v16, v15

    .line 211
    check-cast v16, Landroid/app/PendingIntent;

    .line 213
    .local v16, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v18, Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    .end local v6    # "disableUrlbarHiding":Z
    .end local v7    # "actionButtonConfig":Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;
    .end local v8    # "showShareMenuItem":Z
    .end local v9    # "menuItems":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;>;"
    .end local v11    # "bundle":Lmozilla/components/support/utils/SafeBundle;
    .end local v13    # "menuItemBundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "parcelableIntent":Landroid/os/Parcelable;
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 219
    .restart local v6    # "disableUrlbarHiding":Z
    .restart local v7    # "actionButtonConfig":Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;
    .restart local v8    # "showShareMenuItem":Z
    .restart local v9    # "menuItems":Ljava/util/List;, "Ljava/util/List<Lorg/mozilla/focus/customtabs/CustomTabConfig$CustomTabMenuItem;>;"
    :cond_4
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 221
    .local v10, "unsupportedFeatureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "android.support.customtabs.extra.TINT_ACTION_BUTTON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 222
    const-string v2, "hasActionButtonTint"

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_5
    const-string v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 229
    :cond_6
    const-string v2, "hasBottomToolbar"

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_7
    const-string v2, "android.support.customtabs.extra.SECONDARY_TOOLBAR_COLOR"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 239
    :cond_8
    const-string v2, "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 240
    const-string v2, "hasExitAnimation"

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_9
    const-string v2, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 250
    :cond_a
    const-string v2, "android.support.customtabs.extra.TITLE_VISIBILITY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lmozilla/components/support/utils/SafeIntent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 251
    const-string v2, "android.support.customtabs.extra.TITLE_VISIBILITY"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lmozilla/components/support/utils/SafeIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 252
    .local v17, "titleVisibility":I
    packed-switch v17, :pswitch_data_0

    .line 259
    const-string v2, "CustomTabConfig"

    const-string v18, "Custom tab intent specified unknown EXTRA_TITLE_VISIBILITY_STATE"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v17    # "titleVisibility":I
    :cond_b
    :goto_2
    :pswitch_0
    new-instance v2, Lorg/mozilla/focus/customtabs/CustomTabConfig;

    invoke-direct/range {v2 .. v10}, Lorg/mozilla/focus/customtabs/CustomTabConfig;-><init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;ZLorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;ZLjava/util/List;Ljava/util/List;)V

    return-object v2

    .line 254
    .restart local v17    # "titleVisibility":I
    :pswitch_1
    const-string v2, "hasPageTitle"

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getOptionsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->unsupportedFeatureList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 282
    .local v0, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->toolbarColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "hasToolbarColor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    iget-object v1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->closeButtonIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 287
    const-string v1, "hasCloseButton"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_1
    iget-boolean v1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->disableUrlbarHiding:Z

    if-nez v1, :cond_2

    .line 291
    const-string v1, "disablesUrlbarHiding"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_2
    iget-object v1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->actionButtonConfig:Lorg/mozilla/focus/customtabs/CustomTabConfig$ActionButtonConfig;

    if-eqz v1, :cond_3

    .line 295
    const-string v1, "hasActionButton"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_3
    iget-boolean v1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->showShareMenuItem:Z

    if-eqz v1, :cond_4

    .line 299
    const-string v1, "hasShareItem"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_4
    iget-object v1, p0, Lorg/mozilla/focus/customtabs/CustomTabConfig;->menuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 303
    const-string v1, "hasCustomizedMenu"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
