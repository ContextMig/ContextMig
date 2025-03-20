.class public Lcom/batch/android/BatchPushService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "batch"

.field private static final b:Ljava/lang/String; = "com.batch.android.push.smallicon"

.field private static final c:Ljava/lang/String; = "com.batch.android.push.color"

.field private static final d:I = -0x64

.field private static final e:Ljava/lang/String; = "push_already_shown"

.field private static final f:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "BatchPushService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static _handleNotificationPush(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/BatchPushPayload;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "alert"    # Ljava/lang/String;
    .param p4, "payload"    # Lcom/batch/android/BatchPushPayload;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual/range {p4 .. p4}, Lcom/batch/android/BatchPushPayload;->a()Lcom/batch/android/c/l;

    move-result-object v9

    .line 154
    if-nez v9, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 161
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/batch/android/BatchPushService;->_isPushValid(Landroid/content/Context;Lcom/batch/android/c/l;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9}, Lcom/batch/android/BatchPushService;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/batch/android/c/l;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    invoke-virtual {v9}, Lcom/batch/android/c/l;->f()Ljava/lang/String;

    move-result-object v10

    .line 176
    invoke-static/range {p0 .. p0}, Lcom/batch/android/BatchPushService;->a(Landroid/content/Context;)I

    move-result v6

    .line 177
    const/16 v3, -0x64

    if-ne v6, v3, :cond_2

    .line 179
    const/4 v2, 0x0

    const-string v3, "Batch.Push : Not showing notifications since notification type is NONE or does not contain ALERT"

    invoke-static {v2, v3}, Lcom/batch/android/c/o;->c(ZLjava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 191
    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 203
    :cond_4
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 204
    invoke-static/range {p0 .. p0}, Lcom/batch/android/BatchPushService;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_5

    .line 207
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v8, v2

    .line 218
    :goto_1
    if-nez v8, :cond_6

    .line 220
    const/4 v2, 0x0

    const-string v3, "Batch.Push : Unable to find icon of the application. Did you correctly set your application icon in the manifest?"

    invoke-static {v2, v3}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 193
    :catch_0
    move-exception v2

    .line 195
    const/4 v2, 0x0

    const-string v3, "Batch.Push : Unable to find label of the application. Did you correctly set your application label in the manifest?"

    invoke-static {v2, v3}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_5
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/f/e;->a()I

    move-result v2

    .line 212
    if-eqz v2, :cond_25

    move v8, v2

    .line 214
    goto :goto_1

    .line 227
    :cond_6
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/f/e;->j()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 228
    invoke-virtual {v9}, Lcom/batch/android/c/l;->j()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 232
    :try_start_1
    invoke-virtual {v9}, Lcom/batch/android/c/l;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/batch/android/c/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 233
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/batch/android/c/v;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 234
    if-nez v3, :cond_7

    .line 236
    new-instance v3, Lcom/batch/android/h;

    invoke-virtual {v9}, Lcom/batch/android/c/l;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Lcom/batch/android/c/l;->l()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v7}, Lcom/batch/android/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/batch/android/h;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_7

    .line 239
    move-object/from16 v0, p0

    invoke-static {v0, v4, v3}, Lcom/batch/android/c/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 243
    :cond_7
    if-eqz v3, :cond_11

    .line 245
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/batch/android/BatchPushService;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 263
    :cond_8
    :goto_2
    const/4 v4, 0x0

    .line 266
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_13

    invoke-virtual {v9}, Lcom/batch/android/c/l;->m()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 268
    invoke-virtual {v9}, Lcom/batch/android/c/l;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/batch/android/c/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 269
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/batch/android/c/v;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 270
    if-nez v3, :cond_9

    .line 272
    new-instance v3, Lcom/batch/android/h;

    invoke-virtual {v9}, Lcom/batch/android/c/l;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lcom/batch/android/c/l;->o()Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7, v11}, Lcom/batch/android/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/batch/android/h;->a()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 273
    if-eqz v3, :cond_9

    .line 275
    move-object/from16 v0, p0

    invoke-static {v0, v5, v3}, Lcom/batch/android/c/v;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 279
    :cond_9
    if-eqz v3, :cond_12

    .line 301
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/batch/android/BatchPushService;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    .line 302
    if-eqz v4, :cond_14

    .line 304
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 314
    :goto_4
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/batch/android/f/e;->n()Landroid/net/Uri;

    move-result-object v5

    .line 315
    if-eqz v5, :cond_a

    .line 319
    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_15

    .line 320
    and-int/lit8 v6, v6, -0x2

    .line 328
    :cond_a
    :goto_5
    const/4 v7, 0x0

    .line 329
    invoke-virtual {v9}, Lcom/batch/android/c/l;->c()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 333
    :try_start_3
    invoke-virtual {v9}, Lcom/batch/android/c/l;->d()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 335
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v11, "Received scheme is empty"

    invoke-direct {v7, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 346
    :catch_1
    move-exception v7

    .line 348
    const-string v11, "Error while parsing custom scheme"

    invoke-static {v11, v7}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    const/4 v7, 0x0

    .line 354
    :cond_b
    :goto_6
    if-nez v7, :cond_c

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 357
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "batch_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v11

    invoke-virtual {v11}, Lcom/batch/android/f/e;->i()Ljava/lang/Integer;

    move-result-object v11

    .line 360
    if-eqz v11, :cond_c

    .line 362
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 366
    :cond_c
    move-object/from16 v0, p1

    invoke-static {v0, v9, v7}, Lcom/batch/android/BatchPushService;->_putPushExtraToIntent(Landroid/os/Bundle;Lcom/batch/android/c/l;Landroid/content/Intent;)V

    .line 368
    const/4 v11, 0x0

    const/high16 v12, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v11, v7, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 371
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide v14, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v12, v14

    double-to-int v11, v12

    .line 377
    const-string v12, "android.support.v4.app.NotificationCompat"

    invoke-static {v12}, Lcom/batch/android/c/j;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 380
    new-instance v12, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    invoke-virtual {v12, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 383
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 384
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 385
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 386
    invoke-virtual {v12, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 387
    invoke-virtual {v12, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 388
    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 389
    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 391
    if-eqz v5, :cond_d

    .line 393
    invoke-virtual {v12, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 397
    :cond_d
    const-string v5, "setShowWhen"

    invoke-static {v12, v5}, Lcom/batch/android/c/j;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 399
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 402
    :cond_e
    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    const-string v5, "setColor"

    invoke-static {v12, v5}, Lcom/batch/android/c/j;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 404
    invoke-virtual {v12, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 407
    :cond_f
    if-eqz v2, :cond_10

    .line 409
    invoke-virtual {v12, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 412
    :cond_10
    if-eqz v3, :cond_17

    .line 414
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v2, v12}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 415
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 416
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 424
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v11}, Lcom/batch/android/BatchPushService;->a(Landroid/content/Context;Lcom/batch/android/BatchPushPayload;I)Ljava/util/List;

    move-result-object v2

    .line 425
    if-eqz v2, :cond_18

    .line 427
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompat$Action;

    .line 429
    invoke-virtual {v12, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_8

    .line 249
    :cond_11
    :try_start_4
    const-string v3, "Unable to download custom big image, fallback on default"

    invoke-static {v3}, Lcom/batch/android/c/o;->a(Ljava/lang/String;)V

    .line 250
    const/4 v3, 0x0

    const-string v4, "Batch.Push : Unable to download large icon image sent via payload, fallback on default"

    invoke-static {v3, v4}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 253
    :catch_2
    move-exception v3

    .line 255
    const-string v4, "Error while downloading custom big icon image"

    invoke-static {v4, v3}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    const/4 v3, 0x0

    const-string v4, "Batch.Push : Unable to download large icon image sent via payload, fallback on default"

    invoke-static {v3, v4}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 285
    :cond_12
    :try_start_5
    const-string v3, "Unable to download custom big picture, fallback on default"

    invoke-static {v3}, Lcom/batch/android/c/o;->a(Ljava/lang/String;)V

    .line 286
    const/4 v3, 0x0

    const-string v5, "Batch.Push : Unable to download large big picture image sent via payload, fallback on default"

    invoke-static {v3, v5}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_13
    :goto_9
    move-object v3, v4

    goto/16 :goto_3

    .line 290
    :catch_3
    move-exception v3

    .line 292
    const-string v5, "Error while downloading custom big picture image"

    invoke-static {v5, v3}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    const/4 v3, 0x0

    const-string v5, "Batch.Push : Unable to download big picture image sent via payload, fallback on default"

    invoke-static {v3, v5}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_9

    .line 308
    :cond_14
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/batch/android/f/e;->m()I

    move-result v4

    goto/16 :goto_4

    .line 323
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 339
    :cond_16
    :try_start_6
    invoke-virtual {v9}, Lcom/batch/android/c/l;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 341
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/batch/android/BatchActionActivity;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    const/high16 v11, 0x10000000

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    const-string v11, "deeplink"

    invoke-virtual {v9}, Lcom/batch/android/c/l;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "batch_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_6

    .line 420
    :cond_17
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2, v12}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 421
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    goto/16 :goto_7

    .line 433
    :cond_18
    invoke-virtual {v9}, Lcom/batch/android/c/l;->q()Lcom/batch/android/c/l$a;

    move-result-object v2

    .line 434
    if-eqz v2, :cond_19

    sget-object v3, Lcom/batch/android/c/l$a;->a:Lcom/batch/android/c/l$a;

    if-eq v2, v3, :cond_19

    .line 436
    invoke-virtual {v2}, Lcom/batch/android/c/l$a;->b()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 439
    :cond_19
    invoke-virtual {v9}, Lcom/batch/android/c/l;->r()Ljava/lang/String;

    move-result-object v2

    .line 440
    if-eqz v2, :cond_1a

    .line 442
    invoke-virtual {v12, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 443
    invoke-virtual {v9}, Lcom/batch/android/c/l;->s()Z

    move-result v2

    invoke-virtual {v12, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 446
    :cond_1a
    invoke-virtual {v12}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move-object v3, v2

    .line 527
    :goto_a
    const-string v2, "android.support.v4.app.NotificationManagerCompat"

    invoke-static {v2}, Lcom/batch/android/c/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 529
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v2

    .line 530
    const-string v4, "batch"

    invoke-virtual {v2, v4, v11, v3}, Landroid/support/v4/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 539
    :goto_b
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/batch/android/BatchPushService;->_markPushIdAsShown(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_1b
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 455
    invoke-virtual {v12, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 456
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 457
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 458
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 459
    invoke-virtual {v12, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 460
    invoke-virtual {v12, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 461
    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 462
    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 464
    if-eqz v5, :cond_1c

    .line 466
    invoke-virtual {v12, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 469
    :cond_1c
    if-eqz v2, :cond_1d

    .line 471
    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 475
    :cond_1d
    const/4 v2, -0x1

    if-eq v4, v2, :cond_1e

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v2, v5, :cond_1e

    .line 477
    invoke-virtual {v12, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 480
    :cond_1e
    invoke-virtual/range {p4 .. p4}, Lcom/batch/android/BatchPushPayload;->getActions()Ljava/util/List;

    move-result-object v2

    .line 481
    if-eqz v2, :cond_1f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 483
    const/4 v2, 0x0

    const-string v4, "Batch.Push : Push contains actions but cannot be displayed in compatibility mode. Please add the v4 support library, and make sure proguard is configured correctly."

    invoke-static {v2, v4}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 486
    :cond_1f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v2, v4, :cond_20

    .line 488
    invoke-virtual {v9}, Lcom/batch/android/c/l;->r()Ljava/lang/String;

    move-result-object v2

    .line 489
    if-eqz v2, :cond_20

    .line 491
    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 492
    invoke-virtual {v9}, Lcom/batch/android/c/l;->s()Z

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 497
    :cond_20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_23

    .line 499
    if-eqz v3, :cond_22

    .line 501
    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v2, v12}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 502
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 503
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 511
    :goto_c
    invoke-virtual {v9}, Lcom/batch/android/c/l;->q()Lcom/batch/android/c/l$a;

    move-result-object v2

    .line 512
    if-eqz v2, :cond_21

    sget-object v3, Lcom/batch/android/c/l$a;->a:Lcom/batch/android/c/l$a;

    if-eq v2, v3, :cond_21

    .line 515
    invoke-virtual {v2}, Lcom/batch/android/c/l$a;->a()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 518
    :cond_21
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move-object v3, v2

    .line 519
    goto/16 :goto_a

    .line 507
    :cond_22
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v12}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 508
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto :goto_c

    .line 522
    :cond_23
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_a

    .line 534
    :cond_24
    const-string v2, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 535
    const-string v4, "batch"

    invoke-virtual {v2, v4, v11, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_b

    :cond_25
    move v8, v3

    goto/16 :goto_1
.end method

.method public static _isPushValid(Landroid/content/Context;Lcom/batch/android/c/l;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batchData"    # Lcom/batch/android/c/l;

    .prologue
    const/4 v0, 0x0

    .line 603
    invoke-virtual {p1}, Lcom/batch/android/c/l;->f()Ljava/lang/String;

    move-result-object v1

    .line 604
    if-eqz v1, :cond_0

    invoke-static {p0, v1}, Lcom/batch/android/BatchPushService;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already shown notification["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], aborting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;)V

    .line 620
    :goto_0
    return v0

    .line 613
    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/c/l;->g()Ljava/lang/String;

    move-result-object v2

    .line 614
    if-eqz v2, :cond_1

    invoke-static {p0, v2}, Lcom/batch/android/BatchPushService;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received notification["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] for another install id["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], aborting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/o;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static _markPushIdAsShown(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushId"    # Ljava/lang/String;

    .prologue
    .line 705
    invoke-static {p0}, Lcom/batch/android/BatchPushService;->b(Landroid/content/Context;)Lcom/batch/android/c/i;

    move-result-object v0

    .line 706
    invoke-virtual {v0, p1}, Lcom/batch/android/c/i;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-static {p0}, Lcom/batch/android/c/q;->a(Landroid/content/Context;)Lcom/batch/android/c/q$a;

    move-result-object v1

    const-string v2, "push_already_shown"

    invoke-interface {v1, v2, v0}, Lcom/batch/android/c/q$a;->a(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    const-string v0, "Error while saving already shown push ids"

    invoke-static {v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;)V

    .line 712
    :cond_0
    return-void
.end method

.method public static _putPushExtraToIntent(Landroid/os/Bundle;Lcom/batch/android/c/l;Landroid/content/Intent;)V
    .locals 2
    .param p0, "fullPayload"    # Landroid/os/Bundle;
    .param p1, "batchData"    # Lcom/batch/android/c/l;
    .param p2, "launchIntent"    # Landroid/content/Intent;

    .prologue
    .line 895
    const-string v0, "fromPush"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 896
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    const-string v0, "batchPushPayload"

    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 900
    :cond_0
    invoke-virtual {p1}, Lcom/batch/android/c/l;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 902
    const-string v0, "pushId"

    invoke-virtual {p1}, Lcom/batch/android/c/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 644
    const/4 v0, 0x0

    .line 646
    invoke-static {p0}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v2

    const-string v3, "push.notiftype"

    invoke-virtual {v2, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 647
    if-eqz v2, :cond_6

    .line 651
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/batch/android/PushNotificationType;->fromValue(I)Ljava/util/EnumSet;

    move-result-object v2

    .line 654
    invoke-virtual {v2}, Ljava/util/EnumSet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/batch/android/PushNotificationType;->NONE:Lcom/batch/android/PushNotificationType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lcom/batch/android/PushNotificationType;->ALERT:Lcom/batch/android/PushNotificationType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 656
    :cond_1
    const/16 v0, -0x64

    .line 685
    :cond_2
    :goto_0
    return v0

    .line 659
    :cond_3
    sget-object v3, Lcom/batch/android/PushNotificationType;->VIBRATE:Lcom/batch/android/PushNotificationType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 661
    const/4 v0, 0x2

    .line 664
    :cond_4
    sget-object v3, Lcom/batch/android/PushNotificationType;->SOUND:Lcom/batch/android/PushNotificationType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 666
    or-int/lit8 v0, v0, 0x1

    .line 669
    :cond_5
    sget-object v3, Lcom/batch/android/PushNotificationType;->LIGHTS:Lcom/batch/android/PushNotificationType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 671
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 676
    const-string v2, "Error while reading notification types. Fallback on ALL"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 678
    goto :goto_0

    :cond_6
    move v0, v1

    .line 682
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 626
    .line 629
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 630
    const v1, 0x1050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 631
    const v2, 0x1050005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 633
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/batch/android/BatchPushPayload;I)Ljava/util/List;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/batch/android/BatchPushPayload;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/batch/android/BatchPushPayload;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 820
    const-string v1, "android.support.v4.app.NotificationCompat$Action"

    invoke-static {v1}, Lcom/batch/android/c/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 822
    const/4 v1, 0x1

    const-string v2, "Compat actions are not present"

    invoke-static {v1, v2}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 867
    :cond_0
    :goto_0
    return-object v0

    .line 826
    :cond_1
    invoke-virtual {p1}, Lcom/batch/android/BatchPushPayload;->getActions()Ljava/util/List;

    move-result-object v1

    .line 828
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 835
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 836
    invoke-virtual {p1, v0}, Lcom/batch/android/BatchPushPayload;->writeToBundle(Landroid/os/Bundle;)V

    .line 839
    const/4 v0, 0x0

    .line 841
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/c;

    .line 843
    add-int/lit8 v1, v1, 0x1

    .line 844
    new-instance v5, Landroid/content/Intent;

    iget-boolean v2, v0, Lcom/batch/android/c;->e:Z

    if-eqz v2, :cond_2

    const-class v2, Lcom/batch/android/BatchActionActivity;

    :goto_2
    invoke-direct {v5, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 845
    const-string v2, "com.batch.android.action.exec"

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const-string v2, "actionID"

    iget-object v6, v0, Lcom/batch/android/c;->c:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const-string v2, "args"

    iget-object v6, v0, Lcom/batch/android/c;->d:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v6}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const-string v2, "notificationID"

    invoke-virtual {v5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    invoke-virtual {p1, v5}, Lcom/batch/android/BatchPushPayload;->writeToIntentExtras(Landroid/content/Intent;)V

    .line 853
    iget-boolean v2, v0, Lcom/batch/android/c;->e:Z

    if-eqz v2, :cond_3

    .line 855
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v2, v6

    mul-int/2addr v2, v1

    invoke-static {p0, v2, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 863
    :goto_3
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget-object v6, v0, Lcom/batch/android/c;->b:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/batch/android/BatchPushService;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    iget-object v0, v0, Lcom/batch/android/c;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v0, v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 864
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 863
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 844
    :cond_2
    const-class v2, Lcom/batch/android/BatchActionService;

    goto :goto_2

    .line 860
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v2, v6

    mul-int/2addr v2, v1

    invoke-static {p0, v2, v5, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 867
    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;Lcom/batch/android/c/l;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 552
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/batch/android/f/d;->b(Z)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 592
    :goto_0
    return v0

    .line 557
    :cond_0
    invoke-static {}, Lcom/batch/android/f/d;->a()Lcom/batch/android/f/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/f/d;->i()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 559
    goto :goto_0

    .line 562
    :cond_1
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batch/android/i/c;->k()Z

    move-result v2

    if-nez v2, :cond_2

    .line 564
    const-string v2, "Application is in background, not sending landing"

    invoke-static {v0, v2}, Lcom/batch/android/c/o;->c(ZLjava/lang/String;)V

    move v0, v1

    .line 565
    goto :goto_0

    .line 568
    :cond_2
    invoke-virtual {p2}, Lcom/batch/android/c/l;->i()Lcom/batch/android/json/JSONObject;

    move-result-object v2

    .line 570
    if-nez v2, :cond_3

    move v0, v1

    .line 572
    goto :goto_0

    .line 578
    :cond_3
    :try_start_0
    invoke-static {v2}, Lcom/batch/android/e/b;->b(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/e/c/c;

    move-result-object v3

    .line 579
    if-eqz v3, :cond_4

    .line 581
    new-instance v3, Lcom/batch/android/BatchLandingMessage;

    invoke-direct {v3, p1, v2}, Lcom/batch/android/BatchLandingMessage;-><init>(Landroid/os/Bundle;Lcom/batch/android/json/JSONObject;)V

    invoke-static {p0, v3}, Lcom/batch/android/MessagingActivity;->startActivityForMessage(Landroid/content/Context;Lcom/batch/android/BatchMessage;)V

    .line 583
    invoke-virtual {p2}, Lcom/batch/android/c/l;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/batch/android/BatchPushService;->_markPushIdAsShown(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/batch/android/e/c; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 589
    :goto_1
    const-string v2, "BatchPushService"

    const-string v3, "Error while parsing the messaging payload. Not forwarding to foreground."

    invoke-static {v2, v3, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move v0, v1

    .line 592
    goto :goto_0

    .line 587
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 697
    invoke-static {p0}, Lcom/batch/android/BatchPushService;->b(Landroid/content/Context;)Lcom/batch/android/c/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/batch/android/c/i;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;)Lcom/batch/android/c/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/batch/android/c/i",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    const/4 v1, 0x0

    .line 726
    :try_start_0
    invoke-static {p0}, Lcom/batch/android/c/q;->a(Landroid/content/Context;)Lcom/batch/android/c/q$a;

    move-result-object v0

    const-string v2, "push_already_shown"

    invoke-interface {v0, v2}, Lcom/batch/android/c/q$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 727
    if-eqz v0, :cond_1

    .line 729
    check-cast v0, Lcom/batch/android/c/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_0
    if-nez v0, :cond_0

    .line 740
    new-instance v0, Lcom/batch/android/c/i;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/batch/android/c/i;-><init>(I)V

    .line 743
    :cond_0
    return-object v0

    .line 732
    :catch_0
    move-exception v0

    .line 734
    const-string v2, "Error while reading stored ids"

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 754
    new-instance v0, Lcom/batch/android/i;

    invoke-direct {v0, p0}, Lcom/batch/android/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/batch/android/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 755
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 872
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    const/4 v0, 0x0

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 877
    :cond_1
    invoke-static {}, Lcom/batch/android/f/a;->a()Lcom/batch/android/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/batch/android/f/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 879
    if-nez v0, :cond_0

    .line 882
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 768
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 769
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 771
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.batch.android.push.smallicon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 772
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 784
    :cond_0
    :goto_0
    return-object v0

    .line 779
    :catch_0
    move-exception v1

    .line 781
    const-string v2, "Error while parsing small icon meta data"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 775
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 797
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 798
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 800
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.batch.android.push.color"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 801
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 813
    :cond_0
    :goto_0
    return-object v0

    .line 808
    :catch_0
    move-exception v1

    .line 810
    const-string v2, "Error while parsing small icon meta data"

    invoke-static {v2, v1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 804
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/batch/android/BatchPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/batch/android/c/k;->a(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    :try_start_1
    invoke-static {p1}, Lcom/batch/android/BatchPushPayload;->payloadFromReceiverIntent(Landroid/content/Intent;)Lcom/batch/android/BatchPushPayload;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 107
    if-nez v1, :cond_0

    .line 142
    invoke-static {p1}, Lcom/batch/android/BatchPushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 144
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 142
    :goto_1
    invoke-static {p1}, Lcom/batch/android/BatchPushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 112
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/batch/android/BatchPushPayload;->a()Lcom/batch/android/c/l;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 113
    if-nez v2, :cond_1

    .line 142
    invoke-static {p1}, Lcom/batch/android/BatchPushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 119
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/batch/android/f/e;->q()Lcom/batch/android/f/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/f/e;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    const-string v0, "Ignoring push cause manual display is activated"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    invoke-static {p1}, Lcom/batch/android/BatchPushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 125
    :cond_2
    :try_start_4
    const-string v3, "msg"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v4, "title"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/batch/android/c/l;->b()Z

    move-result v2

    if-nez v2, :cond_3

    .line 131
    invoke-static {p0, v0, v4, v3, v1}, Lcom/batch/android/BatchPushService;->_handleNotificationPush(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/BatchPushPayload;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    :cond_3
    invoke-static {p1}, Lcom/batch/android/BatchPushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    .line 137
    :try_start_5
    const-string v1, "Error while handing notification"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    invoke-static {p1}, Lcom/batch/android/BatchPushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/batch/android/BatchPushReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    throw v0

    .line 102
    :catch_2
    move-exception v0

    goto :goto_1
.end method
