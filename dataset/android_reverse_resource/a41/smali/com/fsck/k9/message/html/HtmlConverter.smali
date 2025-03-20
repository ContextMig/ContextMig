.class public Lcom/fsck/k9/message/html/HtmlConverter;
.super Ljava/lang/Object;
.source "HtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/message/html/HtmlConverter$ListTagHandler;,
        Lcom/fsck/k9/message/html/HtmlConverter$HtmlToTextTagHandler;
    }
.end annotation


# static fields
.field private static final HTML_BLOCKQUOTE_COLOR_TOKEN:Ljava/lang/String; = "$$COLOR$$"

.field private static final HTML_BLOCKQUOTE_END:Ljava/lang/String; = "</blockquote>"

.field private static final HTML_BLOCKQUOTE_START:Ljava/lang/String; = "<blockquote class=\"gmail_quote\" style=\"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid $$COLOR$$; padding-left: 1ex;\">"

.field private static final HTML_NEWLINE:Ljava/lang/String; = "<br />"

.field private static final K9MAIL_CSS_CLASS:Ljava/lang/String; = "k9mail"

.field private static final MAX_SMART_HTMLIFY_MESSAGE_LENGTH:I = 0x40000

.field private static final NBSP_CHARACTER:C = '\u00a0'

.field private static final NBSP_REPLACEMENT:C = ' '

.field private static final PREVIEW_OBJECT_CHARACTER:C = '\ufffc'

.field private static final PREVIEW_OBJECT_REPLACEMENT:C = ' '

.field protected static final QUOTE_COLOR_DEFAULT:Ljava/lang/String; = "#ccc"

.field protected static final QUOTE_COLOR_LEVEL_1:Ljava/lang/String; = "#729fcf"

.field protected static final QUOTE_COLOR_LEVEL_2:Ljava/lang/String; = "#ad7fa8"

.field protected static final QUOTE_COLOR_LEVEL_3:Ljava/lang/String; = "#8ae234"

.field protected static final QUOTE_COLOR_LEVEL_4:Ljava/lang/String; = "#fcaf3e"

.field protected static final QUOTE_COLOR_LEVEL_5:Ljava/lang/String; = "#e9b96e"

.field private static final TEXT_TO_HTML_EXTRA_BUFFER_LENGTH:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendbq(Ljava/lang/StringBuilder;II)V
    .locals 4
    .param p0, "buff"    # Ljava/lang/StringBuilder;
    .param p1, "quotesThisLine"    # I
    .param p2, "quoteDepth"    # I

    .prologue
    .line 326
    if-le p1, p2, :cond_0

    .line 327
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 328
    const-string v1, "<blockquote class=\"gmail_quote\" style=\"margin: 0pt 0pt 1ex 0.8ex; border-left: 1px solid $$COLOR$$; padding-left: 1ex;\">"

    const-string v2, "$$COLOR$$"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lcom/fsck/k9/message/html/HtmlConverter;->getQuoteColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "i":I
    :cond_0
    if-ge p1, p2, :cond_1

    .line 331
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p1, :cond_1

    .line 332
    const-string v1, "</blockquote>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 335
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static appendchar(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "buff"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # I

    .prologue
    .line 290
    sparse-switch p1, :sswitch_data_0

    .line 312
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    :goto_0
    :sswitch_0
    return-void

    .line 292
    :sswitch_1
    const-string v0, "&amp;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 295
    :sswitch_2
    const-string v0, "&lt;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 302
    :sswitch_3
    const-string v0, "<gt>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 309
    :sswitch_4
    const-string v0, "<br />"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0xd -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method private static appendsp(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p0, "buff"    # Ljava/lang/StringBuilder;
    .param p1, "spaces"    # I

    .prologue
    .line 318
    :goto_0
    if-lez p1, :cond_0

    .line 319
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 322
    :cond_0
    return-void
.end method

.method public static convertEmoji2Img(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-static {p0}, Lcom/fsck/k9/message/html/HtmlConverter;->hasEmoji(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 396
    .end local p0    # "html":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 386
    .restart local p0    # "html":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x200

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 387
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 388
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 389
    .local v1, "codePoint":I
    invoke-static {v1}, Lcom/fsck/k9/message/html/HtmlConverter;->getEmojiForCodePoint(I)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "emoji":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 391
    const-string v4, "<img src=\"file:///android_asset/emoticons/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gif\" alt=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_1

    .line 393
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 396
    .end local v1    # "codePoint":I
    .end local v2    # "emoji":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static cssStylePre()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1278
    invoke-static {}, Lcom/fsck/k9/K9;->messageViewFixedWidthFont()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "monospace"

    .line 1281
    .local v0, "font":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<style type=\"text/css\"> pre.k9mail {white-space: pre-wrap; word-wrap:break-word; font-family: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; margin-top: 0px}</style>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1278
    .end local v0    # "font":Ljava/lang/String;
    :cond_0
    const-string v0, "sans-serif"

    goto :goto_0
.end method

.method static cssStyleTheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1255
    invoke-static {}, Lcom/fsck/k9/K9;->getK9MessageViewTheme()Lcom/fsck/k9/K9$Theme;

    move-result-object v0

    sget-object v1, Lcom/fsck/k9/K9$Theme;->DARK:Lcom/fsck/k9/K9$Theme;

    if-ne v0, v1, :cond_0

    .line 1256
    const-string v0, "<style type=\"text/css\">* { background: black ! important; color: #F3F3F3 !important }:link, :link * { color: #CCFF33 !important }:visited, :visited * { color: #551A8B !important }</style> "

    .line 1261
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static getEmojiForCodePoint(I)Ljava/lang/String;
    .locals 1
    .param p0, "codePoint"    # I

    .prologue
    .line 402
    sparse-switch p0, :sswitch_data_0

    .line 1228
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 404
    :sswitch_0
    const-string v0, "sun"

    goto :goto_0

    .line 406
    :sswitch_1
    const-string v0, "cloud"

    goto :goto_0

    .line 408
    :sswitch_2
    const-string v0, "rain"

    goto :goto_0

    .line 410
    :sswitch_3
    const-string v0, "snow"

    goto :goto_0

    .line 412
    :sswitch_4
    const-string v0, "thunder"

    goto :goto_0

    .line 414
    :sswitch_5
    const-string v0, "typhoon"

    goto :goto_0

    .line 416
    :sswitch_6
    const-string v0, "mist"

    goto :goto_0

    .line 418
    :sswitch_7
    const-string v0, "sprinkle"

    goto :goto_0

    .line 420
    :sswitch_8
    const-string v0, "night"

    goto :goto_0

    .line 422
    :sswitch_9
    const-string v0, "sun"

    goto :goto_0

    .line 424
    :sswitch_a
    const-string v0, "sun"

    goto :goto_0

    .line 426
    :sswitch_b
    const-string v0, "sun"

    goto :goto_0

    .line 428
    :sswitch_c
    const-string v0, "night"

    goto :goto_0

    .line 430
    :sswitch_d
    const-string v0, "newmoon"

    goto :goto_0

    .line 432
    :sswitch_e
    const-string v0, "moon1"

    goto :goto_0

    .line 434
    :sswitch_f
    const-string v0, "moon2"

    goto :goto_0

    .line 436
    :sswitch_10
    const-string v0, "moon3"

    goto :goto_0

    .line 438
    :sswitch_11
    const-string v0, "fullmoon"

    goto :goto_0

    .line 440
    :sswitch_12
    const-string v0, "moon2"

    goto :goto_0

    .line 442
    :sswitch_13
    const-string v0, "soon"

    goto :goto_0

    .line 444
    :sswitch_14
    const-string v0, "on"

    goto :goto_0

    .line 446
    :sswitch_15
    const-string v0, "end"

    goto :goto_0

    .line 448
    :sswitch_16
    const-string v0, "sandclock"

    goto :goto_0

    .line 450
    :sswitch_17
    const-string v0, "sandclock"

    goto :goto_0

    .line 452
    :sswitch_18
    const-string v0, "watch"

    goto :goto_0

    .line 454
    :sswitch_19
    const-string v0, "clock"

    goto :goto_0

    .line 456
    :sswitch_1a
    const-string v0, "clock"

    goto :goto_0

    .line 458
    :sswitch_1b
    const-string v0, "clock"

    goto :goto_0

    .line 460
    :sswitch_1c
    const-string v0, "clock"

    goto :goto_0

    .line 462
    :sswitch_1d
    const-string v0, "clock"

    goto :goto_0

    .line 464
    :sswitch_1e
    const-string v0, "clock"

    goto :goto_0

    .line 466
    :sswitch_1f
    const-string v0, "clock"

    goto :goto_0

    .line 468
    :sswitch_20
    const-string v0, "clock"

    goto :goto_0

    .line 470
    :sswitch_21
    const-string v0, "clock"

    goto :goto_0

    .line 472
    :sswitch_22
    const-string v0, "clock"

    goto :goto_0

    .line 474
    :sswitch_23
    const-string v0, "clock"

    goto :goto_0

    .line 476
    :sswitch_24
    const-string v0, "clock"

    goto :goto_0

    .line 478
    :sswitch_25
    const-string v0, "clock"

    goto :goto_0

    .line 480
    :sswitch_26
    const-string v0, "aries"

    goto :goto_0

    .line 482
    :sswitch_27
    const-string v0, "taurus"

    goto :goto_0

    .line 484
    :sswitch_28
    const-string v0, "gemini"

    goto :goto_0

    .line 486
    :sswitch_29
    const-string v0, "cancer"

    goto :goto_0

    .line 488
    :sswitch_2a
    const-string v0, "leo"

    goto/16 :goto_0

    .line 490
    :sswitch_2b
    const-string v0, "virgo"

    goto/16 :goto_0

    .line 492
    :sswitch_2c
    const-string v0, "libra"

    goto/16 :goto_0

    .line 494
    :sswitch_2d
    const-string v0, "scorpius"

    goto/16 :goto_0

    .line 496
    :sswitch_2e
    const-string v0, "sagittarius"

    goto/16 :goto_0

    .line 498
    :sswitch_2f
    const-string v0, "capricornus"

    goto/16 :goto_0

    .line 500
    :sswitch_30
    const-string v0, "aquarius"

    goto/16 :goto_0

    .line 502
    :sswitch_31
    const-string v0, "pisces"

    goto/16 :goto_0

    .line 504
    :sswitch_32
    const-string v0, "wave"

    goto/16 :goto_0

    .line 506
    :sswitch_33
    const-string v0, "night"

    goto/16 :goto_0

    .line 508
    :sswitch_34
    const-string v0, "clover"

    goto/16 :goto_0

    .line 510
    :sswitch_35
    const-string v0, "tulip"

    goto/16 :goto_0

    .line 512
    :sswitch_36
    const-string v0, "bud"

    goto/16 :goto_0

    .line 514
    :sswitch_37
    const-string v0, "maple"

    goto/16 :goto_0

    .line 516
    :sswitch_38
    const-string v0, "cherryblossom"

    goto/16 :goto_0

    .line 518
    :sswitch_39
    const-string v0, "maple"

    goto/16 :goto_0

    .line 520
    :sswitch_3a
    const-string v0, "clover"

    goto/16 :goto_0

    .line 522
    :sswitch_3b
    const-string v0, "cherry"

    goto/16 :goto_0

    .line 524
    :sswitch_3c
    const-string v0, "banana"

    goto/16 :goto_0

    .line 526
    :sswitch_3d
    const-string v0, "apple"

    goto/16 :goto_0

    .line 528
    :sswitch_3e
    const-string v0, "apple"

    goto/16 :goto_0

    .line 530
    :sswitch_3f
    const-string v0, "eye"

    goto/16 :goto_0

    .line 532
    :sswitch_40
    const-string v0, "ear"

    goto/16 :goto_0

    .line 534
    :sswitch_41
    const-string v0, "kissmark"

    goto/16 :goto_0

    .line 536
    :sswitch_42
    const-string v0, "bleah"

    goto/16 :goto_0

    .line 538
    :sswitch_43
    const-string v0, "rouge"

    goto/16 :goto_0

    .line 540
    :sswitch_44
    const-string v0, "hairsalon"

    goto/16 :goto_0

    .line 542
    :sswitch_45
    const-string v0, "shadow"

    goto/16 :goto_0

    .line 544
    :sswitch_46
    const-string v0, "happy01"

    goto/16 :goto_0

    .line 546
    :sswitch_47
    const-string v0, "happy01"

    goto/16 :goto_0

    .line 548
    :sswitch_48
    const-string v0, "happy01"

    goto/16 :goto_0

    .line 550
    :sswitch_49
    const-string v0, "happy01"

    goto/16 :goto_0

    .line 552
    :sswitch_4a
    const-string v0, "dog"

    goto/16 :goto_0

    .line 554
    :sswitch_4b
    const-string v0, "cat"

    goto/16 :goto_0

    .line 556
    :sswitch_4c
    const-string v0, "snail"

    goto/16 :goto_0

    .line 558
    :sswitch_4d
    const-string v0, "chick"

    goto/16 :goto_0

    .line 560
    :sswitch_4e
    const-string v0, "chick"

    goto/16 :goto_0

    .line 562
    :sswitch_4f
    const-string v0, "penguin"

    goto/16 :goto_0

    .line 564
    :sswitch_50
    const-string v0, "fish"

    goto/16 :goto_0

    .line 566
    :sswitch_51
    const-string v0, "horse"

    goto/16 :goto_0

    .line 568
    :sswitch_52
    const-string v0, "pig"

    goto/16 :goto_0

    .line 570
    :sswitch_53
    const-string v0, "chick"

    goto/16 :goto_0

    .line 572
    :sswitch_54
    const-string v0, "fish"

    goto/16 :goto_0

    .line 574
    :sswitch_55
    const-string v0, "aries"

    goto/16 :goto_0

    .line 576
    :sswitch_56
    const-string v0, "dog"

    goto/16 :goto_0

    .line 578
    :sswitch_57
    const-string v0, "dog"

    goto/16 :goto_0

    .line 580
    :sswitch_58
    const-string v0, "fish"

    goto/16 :goto_0

    .line 582
    :sswitch_59
    const-string v0, "foot"

    goto/16 :goto_0

    .line 584
    :sswitch_5a
    const-string v0, "chick"

    goto/16 :goto_0

    .line 586
    :sswitch_5b
    const-string v0, "pig"

    goto/16 :goto_0

    .line 588
    :sswitch_5c
    const-string v0, "cancer"

    goto/16 :goto_0

    .line 590
    :sswitch_5d
    const-string v0, "angry"

    goto/16 :goto_0

    .line 592
    :sswitch_5e
    const-string v0, "sad"

    goto/16 :goto_0

    .line 594
    :sswitch_5f
    const-string v0, "wobbly"

    goto/16 :goto_0

    .line 596
    :sswitch_60
    const-string v0, "despair"

    goto/16 :goto_0

    .line 598
    :sswitch_61
    const-string v0, "wobbly"

    goto/16 :goto_0

    .line 600
    :sswitch_62
    const-string v0, "coldsweats02"

    goto/16 :goto_0

    .line 602
    :sswitch_63
    const-string v0, "gawk"

    goto/16 :goto_0

    .line 604
    :sswitch_64
    const-string v0, "lovely"

    goto/16 :goto_0

    .line 606
    :sswitch_65
    const-string v0, "smile"

    goto/16 :goto_0

    .line 608
    :sswitch_66
    const-string v0, "bleah"

    goto/16 :goto_0

    .line 610
    :sswitch_67
    const-string v0, "bleah"

    goto/16 :goto_0

    .line 612
    :sswitch_68
    const-string v0, "delicious"

    goto/16 :goto_0

    .line 614
    :sswitch_69
    const-string v0, "lovely"

    goto/16 :goto_0

    .line 616
    :sswitch_6a
    const-string v0, "lovely"

    goto/16 :goto_0

    .line 618
    :sswitch_6b
    const-string v0, "happy02"

    goto/16 :goto_0

    .line 620
    :sswitch_6c
    const-string v0, "happy01"

    goto/16 :goto_0

    .line 622
    :sswitch_6d
    const-string v0, "coldsweats01"

    goto/16 :goto_0

    .line 624
    :sswitch_6e
    const-string v0, "happy02"

    goto/16 :goto_0

    .line 626
    :sswitch_6f
    const-string v0, "smile"

    goto/16 :goto_0

    .line 628
    :sswitch_70
    const-string v0, "happy02"

    goto/16 :goto_0

    .line 630
    :sswitch_71
    const-string v0, "delicious"

    goto/16 :goto_0

    .line 632
    :sswitch_72
    const-string v0, "happy01"

    goto/16 :goto_0

    .line 634
    :sswitch_73
    const-string v0, "happy01"

    goto/16 :goto_0

    .line 636
    :sswitch_74
    const-string v0, "coldsweats01"

    goto/16 :goto_0

    .line 638
    :sswitch_75
    const-string v0, "weep"

    goto/16 :goto_0

    .line 640
    :sswitch_76
    const-string v0, "crying"

    goto/16 :goto_0

    .line 642
    :sswitch_77
    const-string v0, "shock"

    goto/16 :goto_0

    .line 644
    :sswitch_78
    const-string v0, "bearing"

    goto/16 :goto_0

    .line 646
    :sswitch_79
    const-string v0, "pout"

    goto/16 :goto_0

    .line 648
    :sswitch_7a
    const-string v0, "confident"

    goto/16 :goto_0

    .line 650
    :sswitch_7b
    const-string v0, "sad"

    goto/16 :goto_0

    .line 652
    :sswitch_7c
    const-string v0, "think"

    goto/16 :goto_0

    .line 654
    :sswitch_7d
    const-string v0, "shock"

    goto/16 :goto_0

    .line 656
    :sswitch_7e
    const-string v0, "sleepy"

    goto/16 :goto_0

    .line 658
    :sswitch_7f
    const-string v0, "catface"

    goto/16 :goto_0

    .line 660
    :sswitch_80
    const-string v0, "coldsweats02"

    goto/16 :goto_0

    .line 662
    :sswitch_81
    const-string v0, "coldsweats02"

    goto/16 :goto_0

    .line 664
    :sswitch_82
    const-string v0, "bearing"

    goto/16 :goto_0

    .line 666
    :sswitch_83
    const-string v0, "wink"

    goto/16 :goto_0

    .line 668
    :sswitch_84
    const-string v0, "happy01"

    goto/16 :goto_0

    .line 670
    :sswitch_85
    const-string v0, "smile"

    goto/16 :goto_0

    .line 672
    :sswitch_86
    const-string v0, "happy02"

    goto/16 :goto_0

    .line 674
    :sswitch_87
    const-string v0, "lovely"

    goto/16 :goto_0

    .line 676
    :sswitch_88
    const-string v0, "lovely"

    goto/16 :goto_0

    .line 678
    :sswitch_89
    const-string v0, "weep"

    goto/16 :goto_0

    .line 680
    :sswitch_8a
    const-string v0, "pout"

    goto/16 :goto_0

    .line 682
    :sswitch_8b
    const-string v0, "smile"

    goto/16 :goto_0

    .line 684
    :sswitch_8c
    const-string v0, "sad"

    goto/16 :goto_0

    .line 686
    :sswitch_8d
    const-string v0, "ng"

    goto/16 :goto_0

    .line 688
    :sswitch_8e
    const-string v0, "ok"

    goto/16 :goto_0

    .line 690
    :sswitch_8f
    const-string v0, "paper"

    goto/16 :goto_0

    .line 692
    :sswitch_90
    const-string v0, "sad"

    goto/16 :goto_0

    .line 694
    :sswitch_91
    const-string v0, "angry"

    goto/16 :goto_0

    .line 696
    :sswitch_92
    const-string v0, "house"

    goto/16 :goto_0

    .line 698
    :sswitch_93
    const-string v0, "house"

    goto/16 :goto_0

    .line 700
    :sswitch_94
    const-string v0, "building"

    goto/16 :goto_0

    .line 702
    :sswitch_95
    const-string v0, "postoffice"

    goto/16 :goto_0

    .line 704
    :sswitch_96
    const-string v0, "hospital"

    goto/16 :goto_0

    .line 706
    :sswitch_97
    const-string v0, "bank"

    goto/16 :goto_0

    .line 708
    :sswitch_98
    const-string v0, "atm"

    goto/16 :goto_0

    .line 710
    :sswitch_99
    const-string v0, "hotel"

    goto/16 :goto_0

    .line 712
    :sswitch_9a
    const-string v0, "24hours"

    goto/16 :goto_0

    .line 714
    :sswitch_9b
    const-string v0, "school"

    goto/16 :goto_0

    .line 716
    :sswitch_9c
    const-string v0, "ship"

    goto/16 :goto_0

    .line 718
    :sswitch_9d
    const-string v0, "bottle"

    goto/16 :goto_0

    .line 720
    :sswitch_9e
    const-string v0, "fuji"

    goto/16 :goto_0

    .line 722
    :sswitch_9f
    const-string v0, "wrench"

    goto/16 :goto_0

    .line 724
    :sswitch_a0
    const-string v0, "shoe"

    goto/16 :goto_0

    .line 726
    :sswitch_a1
    const-string v0, "shoe"

    goto/16 :goto_0

    .line 728
    :sswitch_a2
    const-string v0, "eyeglass"

    goto/16 :goto_0

    .line 730
    :sswitch_a3
    const-string v0, "t-shirt"

    goto/16 :goto_0

    .line 732
    :sswitch_a4
    const-string v0, "denim"

    goto/16 :goto_0

    .line 734
    :sswitch_a5
    const-string v0, "crown"

    goto/16 :goto_0

    .line 736
    :sswitch_a6
    const-string v0, "crown"

    goto/16 :goto_0

    .line 738
    :sswitch_a7
    const-string v0, "boutique"

    goto/16 :goto_0

    .line 740
    :sswitch_a8
    const-string v0, "boutique"

    goto/16 :goto_0

    .line 742
    :sswitch_a9
    const-string v0, "t-shirt"

    goto/16 :goto_0

    .line 744
    :sswitch_aa
    const-string v0, "moneybag"

    goto/16 :goto_0

    .line 746
    :sswitch_ab
    const-string v0, "dollar"

    goto/16 :goto_0

    .line 748
    :sswitch_ac
    const-string v0, "dollar"

    goto/16 :goto_0

    .line 750
    :sswitch_ad
    const-string v0, "yen"

    goto/16 :goto_0

    .line 752
    :sswitch_ae
    const-string v0, "dollar"

    goto/16 :goto_0

    .line 754
    :sswitch_af
    const-string v0, "camera"

    goto/16 :goto_0

    .line 756
    :sswitch_b0
    const-string v0, "bag"

    goto/16 :goto_0

    .line 758
    :sswitch_b1
    const-string v0, "pouch"

    goto/16 :goto_0

    .line 760
    :sswitch_b2
    const-string v0, "bell"

    goto/16 :goto_0

    .line 762
    :sswitch_b3
    const-string v0, "door"

    goto/16 :goto_0

    .line 764
    :sswitch_b4
    const-string v0, "movie"

    goto/16 :goto_0

    .line 766
    :sswitch_b5
    const-string v0, "flair"

    goto/16 :goto_0

    .line 768
    :sswitch_b6
    const-string v0, "sign05"

    goto/16 :goto_0

    .line 770
    :sswitch_b7
    const-string v0, "book"

    goto/16 :goto_0

    .line 772
    :sswitch_b8
    const-string v0, "book"

    goto/16 :goto_0

    .line 774
    :sswitch_b9
    const-string v0, "book"

    goto/16 :goto_0

    .line 776
    :sswitch_ba
    const-string v0, "book"

    goto/16 :goto_0

    .line 778
    :sswitch_bb
    const-string v0, "book"

    goto/16 :goto_0

    .line 780
    :sswitch_bc
    const-string v0, "spa"

    goto/16 :goto_0

    .line 782
    :sswitch_bd
    const-string v0, "toilet"

    goto/16 :goto_0

    .line 784
    :sswitch_be
    const-string v0, "toilet"

    goto/16 :goto_0

    .line 786
    :sswitch_bf
    const-string v0, "toilet"

    goto/16 :goto_0

    .line 788
    :sswitch_c0
    const-string v0, "ribbon"

    goto/16 :goto_0

    .line 790
    :sswitch_c1
    const-string v0, "present"

    goto/16 :goto_0

    .line 792
    :sswitch_c2
    const-string v0, "birthday"

    goto/16 :goto_0

    .line 794
    :sswitch_c3
    const-string v0, "xmas"

    goto/16 :goto_0

    .line 796
    :sswitch_c4
    const-string v0, "pocketbell"

    goto/16 :goto_0

    .line 798
    :sswitch_c5
    const-string v0, "telephone"

    goto/16 :goto_0

    .line 800
    :sswitch_c6
    const-string v0, "telephone"

    goto/16 :goto_0

    .line 802
    :sswitch_c7
    const-string v0, "mobilephone"

    goto/16 :goto_0

    .line 804
    :sswitch_c8
    const-string v0, "phoneto"

    goto/16 :goto_0

    .line 806
    :sswitch_c9
    const-string v0, "memo"

    goto/16 :goto_0

    .line 808
    :sswitch_ca
    const-string v0, "faxto"

    goto/16 :goto_0

    .line 810
    :sswitch_cb
    const-string v0, "mail"

    goto/16 :goto_0

    .line 812
    :sswitch_cc
    const-string v0, "mailto"

    goto/16 :goto_0

    .line 814
    :sswitch_cd
    const-string v0, "mailto"

    goto/16 :goto_0

    .line 816
    :sswitch_ce
    const-string v0, "postoffice"

    goto/16 :goto_0

    .line 818
    :sswitch_cf
    const-string v0, "postoffice"

    goto/16 :goto_0

    .line 820
    :sswitch_d0
    const-string v0, "postoffice"

    goto/16 :goto_0

    .line 822
    :sswitch_d1
    const-string v0, "present"

    goto/16 :goto_0

    .line 824
    :sswitch_d2
    const-string v0, "pen"

    goto/16 :goto_0

    .line 826
    :sswitch_d3
    const-string v0, "chair"

    goto/16 :goto_0

    .line 828
    :sswitch_d4
    const-string v0, "pc"

    goto/16 :goto_0

    .line 830
    :sswitch_d5
    const-string v0, "pencil"

    goto/16 :goto_0

    .line 832
    :sswitch_d6
    const-string v0, "clip"

    goto/16 :goto_0

    .line 834
    :sswitch_d7
    const-string v0, "bag"

    goto/16 :goto_0

    .line 836
    :sswitch_d8
    const-string v0, "hairsalon"

    goto/16 :goto_0

    .line 838
    :sswitch_d9
    const-string v0, "memo"

    goto/16 :goto_0

    .line 840
    :sswitch_da
    const-string v0, "memo"

    goto/16 :goto_0

    .line 842
    :sswitch_db
    const-string v0, "book"

    goto/16 :goto_0

    .line 844
    :sswitch_dc
    const-string v0, "book"

    goto/16 :goto_0

    .line 846
    :sswitch_dd
    const-string v0, "book"

    goto/16 :goto_0

    .line 848
    :sswitch_de
    const-string v0, "memo"

    goto/16 :goto_0

    .line 850
    :sswitch_df
    const-string v0, "book"

    goto/16 :goto_0

    .line 852
    :sswitch_e0
    const-string v0, "book"

    goto/16 :goto_0

    .line 854
    :sswitch_e1
    const-string v0, "memo"

    goto/16 :goto_0

    .line 856
    :sswitch_e2
    const-string v0, "foot"

    goto/16 :goto_0

    .line 858
    :sswitch_e3
    const-string v0, "sports"

    goto/16 :goto_0

    .line 860
    :sswitch_e4
    const-string v0, "baseball"

    goto/16 :goto_0

    .line 862
    :sswitch_e5
    const-string v0, "golf"

    goto/16 :goto_0

    .line 864
    :sswitch_e6
    const-string v0, "tennis"

    goto/16 :goto_0

    .line 866
    :sswitch_e7
    const-string v0, "soccer"

    goto/16 :goto_0

    .line 868
    :sswitch_e8
    const-string v0, "ski"

    goto/16 :goto_0

    .line 870
    :sswitch_e9
    const-string v0, "basketball"

    goto/16 :goto_0

    .line 872
    :sswitch_ea
    const-string v0, "motorsports"

    goto/16 :goto_0

    .line 874
    :sswitch_eb
    const-string v0, "snowboard"

    goto/16 :goto_0

    .line 876
    :sswitch_ec
    const-string v0, "run"

    goto/16 :goto_0

    .line 878
    :sswitch_ed
    const-string v0, "snowboard"

    goto/16 :goto_0

    .line 880
    :sswitch_ee
    const-string v0, "horse"

    goto/16 :goto_0

    .line 882
    :sswitch_ef
    const-string v0, "train"

    goto/16 :goto_0

    .line 884
    :sswitch_f0
    const-string v0, "subway"

    goto/16 :goto_0

    .line 886
    :sswitch_f1
    const-string v0, "subway"

    goto/16 :goto_0

    .line 888
    :sswitch_f2
    const-string v0, "bullettrain"

    goto/16 :goto_0

    .line 890
    :sswitch_f3
    const-string v0, "bullettrain"

    goto/16 :goto_0

    .line 892
    :sswitch_f4
    const-string v0, "car"

    goto/16 :goto_0

    .line 894
    :sswitch_f5
    const-string v0, "rvcar"

    goto/16 :goto_0

    .line 896
    :sswitch_f6
    const-string v0, "bus"

    goto/16 :goto_0

    .line 898
    :sswitch_f7
    const-string v0, "ship"

    goto/16 :goto_0

    .line 900
    :sswitch_f8
    const-string v0, "airplane"

    goto/16 :goto_0

    .line 902
    :sswitch_f9
    const-string v0, "yacht"

    goto/16 :goto_0

    .line 904
    :sswitch_fa
    const-string v0, "bicycle"

    goto/16 :goto_0

    .line 906
    :sswitch_fb
    const-string v0, "yacht"

    goto/16 :goto_0

    .line 908
    :sswitch_fc
    const-string v0, "car"

    goto/16 :goto_0

    .line 910
    :sswitch_fd
    const-string v0, "run"

    goto/16 :goto_0

    .line 912
    :sswitch_fe
    const-string v0, "gasstation"

    goto/16 :goto_0

    .line 914
    :sswitch_ff
    const-string v0, "parking"

    goto/16 :goto_0

    .line 916
    :sswitch_100
    const-string v0, "signaler"

    goto/16 :goto_0

    .line 918
    :sswitch_101
    const-string v0, "spa"

    goto/16 :goto_0

    .line 920
    :sswitch_102
    const-string v0, "carouselpony"

    goto/16 :goto_0

    .line 922
    :sswitch_103
    const-string v0, "fish"

    goto/16 :goto_0

    .line 924
    :sswitch_104
    const-string v0, "karaoke"

    goto/16 :goto_0

    .line 926
    :sswitch_105
    const-string v0, "movie"

    goto/16 :goto_0

    .line 928
    :sswitch_106
    const-string v0, "movie"

    goto/16 :goto_0

    .line 930
    :sswitch_107
    const-string v0, "music"

    goto/16 :goto_0

    .line 932
    :sswitch_108
    const-string v0, "art"

    goto/16 :goto_0

    .line 934
    :sswitch_109
    const-string v0, "drama"

    goto/16 :goto_0

    .line 936
    :sswitch_10a
    const-string v0, "event"

    goto/16 :goto_0

    .line 938
    :sswitch_10b
    const-string v0, "ticket"

    goto/16 :goto_0

    .line 940
    :sswitch_10c
    const-string v0, "slate"

    goto/16 :goto_0

    .line 942
    :sswitch_10d
    const-string v0, "drama"

    goto/16 :goto_0

    .line 944
    :sswitch_10e
    const-string v0, "game"

    goto/16 :goto_0

    .line 946
    :sswitch_10f
    const-string v0, "note"

    goto/16 :goto_0

    .line 948
    :sswitch_110
    const-string v0, "notes"

    goto/16 :goto_0

    .line 950
    :sswitch_111
    const-string v0, "notes"

    goto/16 :goto_0

    .line 952
    :sswitch_112
    const-string v0, "tv"

    goto/16 :goto_0

    .line 954
    :sswitch_113
    const-string v0, "cd"

    goto/16 :goto_0

    .line 956
    :sswitch_114
    const-string v0, "cd"

    goto/16 :goto_0

    .line 958
    :sswitch_115
    const-string v0, "kissmark"

    goto/16 :goto_0

    .line 960
    :sswitch_116
    const-string v0, "loveletter"

    goto/16 :goto_0

    .line 962
    :sswitch_117
    const-string v0, "ring"

    goto/16 :goto_0

    .line 964
    :sswitch_118
    const-string v0, "ring"

    goto/16 :goto_0

    .line 966
    :sswitch_119
    const-string v0, "kissmark"

    goto/16 :goto_0

    .line 968
    :sswitch_11a
    const-string v0, "heart02"

    goto/16 :goto_0

    .line 970
    :sswitch_11b
    const-string v0, "freedial"

    goto/16 :goto_0

    .line 972
    :sswitch_11c
    const-string v0, "sharp"

    goto/16 :goto_0

    .line 974
    :sswitch_11d
    const-string v0, "mobaq"

    goto/16 :goto_0

    .line 976
    :sswitch_11e
    const-string v0, "one"

    goto/16 :goto_0

    .line 978
    :sswitch_11f
    const-string v0, "two"

    goto/16 :goto_0

    .line 980
    :sswitch_120
    const-string v0, "three"

    goto/16 :goto_0

    .line 982
    :sswitch_121
    const-string v0, "four"

    goto/16 :goto_0

    .line 984
    :sswitch_122
    const-string v0, "five"

    goto/16 :goto_0

    .line 986
    :sswitch_123
    const-string v0, "six"

    goto/16 :goto_0

    .line 988
    :sswitch_124
    const-string v0, "seven"

    goto/16 :goto_0

    .line 990
    :sswitch_125
    const-string v0, "eight"

    goto/16 :goto_0

    .line 992
    :sswitch_126
    const-string v0, "nine"

    goto/16 :goto_0

    .line 994
    :sswitch_127
    const-string v0, "zero"

    goto/16 :goto_0

    .line 996
    :sswitch_128
    const-string v0, "fastfood"

    goto/16 :goto_0

    .line 998
    :sswitch_129
    const-string v0, "riceball"

    goto/16 :goto_0

    .line 1000
    :sswitch_12a
    const-string v0, "cake"

    goto/16 :goto_0

    .line 1002
    :sswitch_12b
    const-string v0, "noodle"

    goto/16 :goto_0

    .line 1004
    :sswitch_12c
    const-string v0, "bread"

    goto/16 :goto_0

    .line 1006
    :sswitch_12d
    const-string v0, "noodle"

    goto/16 :goto_0

    .line 1008
    :sswitch_12e
    const-string v0, "typhoon"

    goto/16 :goto_0

    .line 1010
    :sswitch_12f
    const-string v0, "restaurant"

    goto/16 :goto_0

    .line 1012
    :sswitch_130
    const-string v0, "cafe"

    goto/16 :goto_0

    .line 1014
    :sswitch_131
    const-string v0, "bar"

    goto/16 :goto_0

    .line 1016
    :sswitch_132
    const-string v0, "beer"

    goto/16 :goto_0

    .line 1018
    :sswitch_133
    const-string v0, "japanesetea"

    goto/16 :goto_0

    .line 1020
    :sswitch_134
    const-string v0, "bottle"

    goto/16 :goto_0

    .line 1022
    :sswitch_135
    const-string v0, "wine"

    goto/16 :goto_0

    .line 1024
    :sswitch_136
    const-string v0, "beer"

    goto/16 :goto_0

    .line 1026
    :sswitch_137
    const-string v0, "bar"

    goto/16 :goto_0

    .line 1028
    :sswitch_138
    const-string v0, "upwardright"

    goto/16 :goto_0

    .line 1030
    :sswitch_139
    const-string v0, "downwardright"

    goto/16 :goto_0

    .line 1032
    :sswitch_13a
    const-string v0, "upwardleft"

    goto/16 :goto_0

    .line 1034
    :sswitch_13b
    const-string v0, "downwardleft"

    goto/16 :goto_0

    .line 1036
    :sswitch_13c
    const-string v0, "up"

    goto/16 :goto_0

    .line 1038
    :sswitch_13d
    const-string v0, "down"

    goto/16 :goto_0

    .line 1040
    :sswitch_13e
    const-string v0, "leftright"

    goto/16 :goto_0

    .line 1042
    :sswitch_13f
    const-string v0, "updown"

    goto/16 :goto_0

    .line 1044
    :sswitch_140
    const-string v0, "sign01"

    goto/16 :goto_0

    .line 1046
    :sswitch_141
    const-string v0, "sign02"

    goto/16 :goto_0

    .line 1048
    :sswitch_142
    const-string v0, "sign03"

    goto/16 :goto_0

    .line 1050
    :sswitch_143
    const-string v0, "sign04"

    goto/16 :goto_0

    .line 1052
    :sswitch_144
    const-string v0, "sign05"

    goto/16 :goto_0

    .line 1054
    :sswitch_145
    const-string v0, "sign01"

    goto/16 :goto_0

    .line 1056
    :sswitch_146
    const-string v0, "heart01"

    goto/16 :goto_0

    .line 1058
    :sswitch_147
    const-string v0, "heart02"

    goto/16 :goto_0

    .line 1060
    :sswitch_148
    const-string v0, "heart03"

    goto/16 :goto_0

    .line 1062
    :sswitch_149
    const-string v0, "heart04"

    goto/16 :goto_0

    .line 1064
    :sswitch_14a
    const-string v0, "heart01"

    goto/16 :goto_0

    .line 1066
    :sswitch_14b
    const-string v0, "heart02"

    goto/16 :goto_0

    .line 1068
    :sswitch_14c
    const-string v0, "heart01"

    goto/16 :goto_0

    .line 1070
    :sswitch_14d
    const-string v0, "heart01"

    goto/16 :goto_0

    .line 1072
    :sswitch_14e
    const-string v0, "heart01"

    goto/16 :goto_0

    .line 1074
    :sswitch_14f
    const-string v0, "heart01"

    goto/16 :goto_0

    .line 1076
    :sswitch_150
    const-string v0, "heart01"

    goto/16 :goto_0

    .line 1078
    :sswitch_151
    const-string v0, "heart01"

    goto/16 :goto_0

    .line 1080
    :sswitch_152
    const-string v0, "heart02"

    goto/16 :goto_0

    .line 1082
    :sswitch_153
    const-string v0, "cute"

    goto/16 :goto_0

    .line 1084
    :sswitch_154
    const-string v0, "heart"

    goto/16 :goto_0

    .line 1086
    :sswitch_155
    const-string v0, "spade"

    goto/16 :goto_0

    .line 1088
    :sswitch_156
    const-string v0, "diamond"

    goto/16 :goto_0

    .line 1090
    :sswitch_157
    const-string v0, "club"

    goto/16 :goto_0

    .line 1092
    :sswitch_158
    const-string v0, "smoking"

    goto/16 :goto_0

    .line 1094
    :sswitch_159
    const-string v0, "nosmoking"

    goto/16 :goto_0

    .line 1096
    :sswitch_15a
    const-string v0, "wheelchair"

    goto/16 :goto_0

    .line 1098
    :sswitch_15b
    const-string v0, "free"

    goto/16 :goto_0

    .line 1100
    :sswitch_15c
    const-string v0, "flag"

    goto/16 :goto_0

    .line 1102
    :sswitch_15d
    const-string v0, "danger"

    goto/16 :goto_0

    .line 1104
    :sswitch_15e
    const-string v0, "ng"

    goto/16 :goto_0

    .line 1106
    :sswitch_15f
    const-string v0, "ok"

    goto/16 :goto_0

    .line 1108
    :sswitch_160
    const-string v0, "ng"

    goto/16 :goto_0

    .line 1110
    :sswitch_161
    const-string v0, "copyright"

    goto/16 :goto_0

    .line 1112
    :sswitch_162
    const-string v0, "tm"

    goto/16 :goto_0

    .line 1114
    :sswitch_163
    const-string v0, "secret"

    goto/16 :goto_0

    .line 1116
    :sswitch_164
    const-string v0, "recycle"

    goto/16 :goto_0

    .line 1118
    :sswitch_165
    const-string v0, "r-mark"

    goto/16 :goto_0

    .line 1120
    :sswitch_166
    const-string v0, "ban"

    goto/16 :goto_0

    .line 1122
    :sswitch_167
    const-string v0, "empty"

    goto/16 :goto_0

    .line 1124
    :sswitch_168
    const-string v0, "pass"

    goto/16 :goto_0

    .line 1126
    :sswitch_169
    const-string v0, "full"

    goto/16 :goto_0

    .line 1128
    :sswitch_16a
    const-string v0, "new"

    goto/16 :goto_0

    .line 1130
    :sswitch_16b
    const-string v0, "fullmoon"

    goto/16 :goto_0

    .line 1132
    :sswitch_16c
    const-string v0, "ban"

    goto/16 :goto_0

    .line 1134
    :sswitch_16d
    const-string v0, "cute"

    goto/16 :goto_0

    .line 1136
    :sswitch_16e
    const-string v0, "flair"

    goto/16 :goto_0

    .line 1138
    :sswitch_16f
    const-string v0, "annoy"

    goto/16 :goto_0

    .line 1140
    :sswitch_170
    const-string v0, "bomb"

    goto/16 :goto_0

    .line 1142
    :sswitch_171
    const-string v0, "sleepy"

    goto/16 :goto_0

    .line 1144
    :sswitch_172
    const-string v0, "impact"

    goto/16 :goto_0

    .line 1146
    :sswitch_173
    const-string v0, "sweat01"

    goto/16 :goto_0

    .line 1148
    :sswitch_174
    const-string v0, "sweat02"

    goto/16 :goto_0

    .line 1150
    :sswitch_175
    const-string v0, "dash"

    goto/16 :goto_0

    .line 1152
    :sswitch_176
    const-string v0, "sad"

    goto/16 :goto_0

    .line 1154
    :sswitch_177
    const-string v0, "shine"

    goto/16 :goto_0

    .line 1156
    :sswitch_178
    const-string v0, "cute"

    goto/16 :goto_0

    .line 1158
    :sswitch_179
    const-string v0, "cute"

    goto/16 :goto_0

    .line 1160
    :sswitch_17a
    const-string v0, "newmoon"

    goto/16 :goto_0

    .line 1162
    :sswitch_17b
    const-string v0, "newmoon"

    goto/16 :goto_0

    .line 1164
    :sswitch_17c
    const-string v0, "newmoon"

    goto/16 :goto_0

    .line 1166
    :sswitch_17d
    const-string v0, "newmoon"

    goto/16 :goto_0

    .line 1168
    :sswitch_17e
    const-string v0, "newmoon"

    goto/16 :goto_0

    .line 1170
    :sswitch_17f
    const-string v0, "shine"

    goto/16 :goto_0

    .line 1172
    :sswitch_180
    const-string v0, "id"

    goto/16 :goto_0

    .line 1174
    :sswitch_181
    const-string v0, "key"

    goto/16 :goto_0

    .line 1176
    :sswitch_182
    const-string v0, "enter"

    goto/16 :goto_0

    .line 1178
    :sswitch_183
    const-string v0, "clear"

    goto/16 :goto_0

    .line 1180
    :sswitch_184
    const-string v0, "search"

    goto/16 :goto_0

    .line 1182
    :sswitch_185
    const-string v0, "key"

    goto/16 :goto_0

    .line 1184
    :sswitch_186
    const-string v0, "key"

    goto/16 :goto_0

    .line 1186
    :sswitch_187
    const-string v0, "key"

    goto/16 :goto_0

    .line 1188
    :sswitch_188
    const-string v0, "search"

    goto/16 :goto_0

    .line 1190
    :sswitch_189
    const-string v0, "key"

    goto/16 :goto_0

    .line 1192
    :sswitch_18a
    const-string v0, "recycle"

    goto/16 :goto_0

    .line 1194
    :sswitch_18b
    const-string v0, "mail"

    goto/16 :goto_0

    .line 1196
    :sswitch_18c
    const-string v0, "rock"

    goto/16 :goto_0

    .line 1198
    :sswitch_18d
    const-string v0, "scissors"

    goto/16 :goto_0

    .line 1200
    :sswitch_18e
    const-string v0, "paper"

    goto/16 :goto_0

    .line 1202
    :sswitch_18f
    const-string v0, "punch"

    goto/16 :goto_0

    .line 1204
    :sswitch_190
    const-string v0, "good"

    goto/16 :goto_0

    .line 1206
    :sswitch_191
    const-string v0, "paper"

    goto/16 :goto_0

    .line 1208
    :sswitch_192
    const-string v0, "ok"

    goto/16 :goto_0

    .line 1210
    :sswitch_193
    const-string v0, "down"

    goto/16 :goto_0

    .line 1212
    :sswitch_194
    const-string v0, "paper"

    goto/16 :goto_0

    .line 1214
    :sswitch_195
    const-string v0, "info01"

    goto/16 :goto_0

    .line 1216
    :sswitch_196
    const-string v0, "info02"

    goto/16 :goto_0

    .line 1218
    :sswitch_197
    const-string v0, "by-d"

    goto/16 :goto_0

    .line 1220
    :sswitch_198
    const-string v0, "d-point"

    goto/16 :goto_0

    .line 1222
    :sswitch_199
    const-string v0, "appli01"

    goto/16 :goto_0

    .line 1224
    :sswitch_19a
    const-string v0, "appli02"

    goto/16 :goto_0

    .line 1226
    :sswitch_19b
    const-string v0, "movie"

    goto/16 :goto_0

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0xfe000 -> :sswitch_0
        0xfe001 -> :sswitch_1
        0xfe002 -> :sswitch_2
        0xfe003 -> :sswitch_3
        0xfe004 -> :sswitch_4
        0xfe005 -> :sswitch_5
        0xfe006 -> :sswitch_6
        0xfe007 -> :sswitch_7
        0xfe008 -> :sswitch_8
        0xfe009 -> :sswitch_9
        0xfe00a -> :sswitch_a
        0xfe00c -> :sswitch_b
        0xfe010 -> :sswitch_c
        0xfe011 -> :sswitch_d
        0xfe012 -> :sswitch_e
        0xfe013 -> :sswitch_f
        0xfe014 -> :sswitch_10
        0xfe015 -> :sswitch_11
        0xfe016 -> :sswitch_12
        0xfe018 -> :sswitch_13
        0xfe019 -> :sswitch_14
        0xfe01a -> :sswitch_15
        0xfe01b -> :sswitch_16
        0xfe01c -> :sswitch_17
        0xfe01d -> :sswitch_18
        0xfe01e -> :sswitch_19
        0xfe01f -> :sswitch_1a
        0xfe020 -> :sswitch_1b
        0xfe021 -> :sswitch_1c
        0xfe022 -> :sswitch_1d
        0xfe023 -> :sswitch_1e
        0xfe024 -> :sswitch_1f
        0xfe025 -> :sswitch_20
        0xfe026 -> :sswitch_21
        0xfe027 -> :sswitch_22
        0xfe028 -> :sswitch_23
        0xfe029 -> :sswitch_24
        0xfe02a -> :sswitch_25
        0xfe02b -> :sswitch_26
        0xfe02c -> :sswitch_27
        0xfe02d -> :sswitch_28
        0xfe02e -> :sswitch_29
        0xfe02f -> :sswitch_2a
        0xfe030 -> :sswitch_2b
        0xfe031 -> :sswitch_2c
        0xfe032 -> :sswitch_2d
        0xfe033 -> :sswitch_2e
        0xfe034 -> :sswitch_2f
        0xfe035 -> :sswitch_30
        0xfe036 -> :sswitch_31
        0xfe038 -> :sswitch_32
        0xfe03b -> :sswitch_33
        0xfe03c -> :sswitch_34
        0xfe03d -> :sswitch_35
        0xfe03e -> :sswitch_36
        0xfe03f -> :sswitch_37
        0xfe040 -> :sswitch_38
        0xfe042 -> :sswitch_39
        0xfe04e -> :sswitch_3a
        0xfe04f -> :sswitch_3b
        0xfe050 -> :sswitch_3c
        0xfe051 -> :sswitch_3d
        0xfe05b -> :sswitch_3e
        0xfe190 -> :sswitch_3f
        0xfe191 -> :sswitch_40
        0xfe193 -> :sswitch_41
        0xfe194 -> :sswitch_42
        0xfe195 -> :sswitch_43
        0xfe198 -> :sswitch_44
        0xfe19a -> :sswitch_45
        0xfe19b -> :sswitch_46
        0xfe19c -> :sswitch_47
        0xfe19d -> :sswitch_48
        0xfe19e -> :sswitch_49
        0xfe1b7 -> :sswitch_4a
        0xfe1b8 -> :sswitch_4b
        0xfe1b9 -> :sswitch_4c
        0xfe1ba -> :sswitch_4d
        0xfe1bb -> :sswitch_4e
        0xfe1bc -> :sswitch_4f
        0xfe1bd -> :sswitch_50
        0xfe1be -> :sswitch_51
        0xfe1bf -> :sswitch_52
        0xfe1c8 -> :sswitch_53
        0xfe1c9 -> :sswitch_54
        0xfe1cf -> :sswitch_55
        0xfe1d0 -> :sswitch_56
        0xfe1d8 -> :sswitch_57
        0xfe1d9 -> :sswitch_58
        0xfe1db -> :sswitch_59
        0xfe1dd -> :sswitch_5a
        0xfe1e0 -> :sswitch_5b
        0xfe1e3 -> :sswitch_5c
        0xfe320 -> :sswitch_5d
        0xfe321 -> :sswitch_5e
        0xfe322 -> :sswitch_5f
        0xfe323 -> :sswitch_60
        0xfe324 -> :sswitch_61
        0xfe325 -> :sswitch_62
        0xfe326 -> :sswitch_63
        0xfe327 -> :sswitch_64
        0xfe328 -> :sswitch_65
        0xfe329 -> :sswitch_66
        0xfe32a -> :sswitch_67
        0xfe32b -> :sswitch_68
        0xfe32c -> :sswitch_69
        0xfe32d -> :sswitch_6a
        0xfe32f -> :sswitch_6b
        0xfe330 -> :sswitch_6c
        0xfe331 -> :sswitch_6d
        0xfe332 -> :sswitch_6e
        0xfe333 -> :sswitch_6f
        0xfe334 -> :sswitch_70
        0xfe335 -> :sswitch_71
        0xfe336 -> :sswitch_72
        0xfe337 -> :sswitch_73
        0xfe338 -> :sswitch_74
        0xfe339 -> :sswitch_75
        0xfe33a -> :sswitch_76
        0xfe33b -> :sswitch_77
        0xfe33c -> :sswitch_78
        0xfe33d -> :sswitch_79
        0xfe33e -> :sswitch_7a
        0xfe33f -> :sswitch_7b
        0xfe340 -> :sswitch_7c
        0xfe341 -> :sswitch_7d
        0xfe342 -> :sswitch_7e
        0xfe343 -> :sswitch_7f
        0xfe344 -> :sswitch_80
        0xfe345 -> :sswitch_81
        0xfe346 -> :sswitch_82
        0xfe347 -> :sswitch_83
        0xfe348 -> :sswitch_84
        0xfe349 -> :sswitch_85
        0xfe34a -> :sswitch_86
        0xfe34b -> :sswitch_87
        0xfe34c -> :sswitch_88
        0xfe34d -> :sswitch_89
        0xfe34e -> :sswitch_8a
        0xfe34f -> :sswitch_8b
        0xfe350 -> :sswitch_8c
        0xfe351 -> :sswitch_8d
        0xfe352 -> :sswitch_8e
        0xfe357 -> :sswitch_8f
        0xfe359 -> :sswitch_90
        0xfe35a -> :sswitch_91
        0xfe4b0 -> :sswitch_92
        0xfe4b1 -> :sswitch_93
        0xfe4b2 -> :sswitch_94
        0xfe4b3 -> :sswitch_95
        0xfe4b4 -> :sswitch_96
        0xfe4b5 -> :sswitch_97
        0xfe4b6 -> :sswitch_98
        0xfe4b7 -> :sswitch_99
        0xfe4b9 -> :sswitch_9a
        0xfe4ba -> :sswitch_9b
        0xfe4c1 -> :sswitch_9c
        0xfe4c2 -> :sswitch_9d
        0xfe4c3 -> :sswitch_9e
        0xfe4c9 -> :sswitch_9f
        0xfe4cc -> :sswitch_a0
        0xfe4cd -> :sswitch_a1
        0xfe4ce -> :sswitch_a2
        0xfe4cf -> :sswitch_a3
        0xfe4d0 -> :sswitch_a4
        0xfe4d1 -> :sswitch_a5
        0xfe4d2 -> :sswitch_a6
        0xfe4d6 -> :sswitch_a7
        0xfe4d7 -> :sswitch_a8
        0xfe4db -> :sswitch_a9
        0xfe4dc -> :sswitch_aa
        0xfe4dd -> :sswitch_ab
        0xfe4e0 -> :sswitch_ac
        0xfe4e2 -> :sswitch_ad
        0xfe4e3 -> :sswitch_ae
        0xfe4ef -> :sswitch_af
        0xfe4f0 -> :sswitch_b0
        0xfe4f1 -> :sswitch_b1
        0xfe4f2 -> :sswitch_b2
        0xfe4f3 -> :sswitch_b3
        0xfe4f9 -> :sswitch_b4
        0xfe4fb -> :sswitch_b5
        0xfe4fd -> :sswitch_b6
        0xfe4ff -> :sswitch_b7
        0xfe500 -> :sswitch_b8
        0xfe501 -> :sswitch_b9
        0xfe502 -> :sswitch_ba
        0xfe503 -> :sswitch_bb
        0xfe505 -> :sswitch_bc
        0xfe506 -> :sswitch_bd
        0xfe507 -> :sswitch_be
        0xfe508 -> :sswitch_bf
        0xfe50f -> :sswitch_c0
        0xfe510 -> :sswitch_c1
        0xfe511 -> :sswitch_c2
        0xfe512 -> :sswitch_c3
        0xfe522 -> :sswitch_c4
        0xfe523 -> :sswitch_c5
        0xfe524 -> :sswitch_c6
        0xfe525 -> :sswitch_c7
        0xfe526 -> :sswitch_c8
        0xfe527 -> :sswitch_c9
        0xfe528 -> :sswitch_ca
        0xfe529 -> :sswitch_cb
        0xfe52a -> :sswitch_cc
        0xfe52b -> :sswitch_cd
        0xfe52c -> :sswitch_ce
        0xfe52d -> :sswitch_cf
        0xfe52e -> :sswitch_d0
        0xfe535 -> :sswitch_d1
        0xfe536 -> :sswitch_d2
        0xfe537 -> :sswitch_d3
        0xfe538 -> :sswitch_d4
        0xfe539 -> :sswitch_d5
        0xfe53a -> :sswitch_d6
        0xfe53b -> :sswitch_d7
        0xfe53e -> :sswitch_d8
        0xfe540 -> :sswitch_d9
        0xfe541 -> :sswitch_da
        0xfe545 -> :sswitch_db
        0xfe546 -> :sswitch_dc
        0xfe547 -> :sswitch_dd
        0xfe548 -> :sswitch_de
        0xfe54d -> :sswitch_df
        0xfe54f -> :sswitch_e0
        0xfe552 -> :sswitch_e1
        0xfe553 -> :sswitch_e2
        0xfe7d0 -> :sswitch_e3
        0xfe7d1 -> :sswitch_e4
        0xfe7d2 -> :sswitch_e5
        0xfe7d3 -> :sswitch_e6
        0xfe7d4 -> :sswitch_e7
        0xfe7d5 -> :sswitch_e8
        0xfe7d6 -> :sswitch_e9
        0xfe7d7 -> :sswitch_ea
        0xfe7d8 -> :sswitch_eb
        0xfe7d9 -> :sswitch_ec
        0xfe7da -> :sswitch_ed
        0xfe7dc -> :sswitch_ee
        0xfe7df -> :sswitch_ef
        0xfe7e0 -> :sswitch_f0
        0xfe7e1 -> :sswitch_f1
        0xfe7e2 -> :sswitch_f2
        0xfe7e3 -> :sswitch_f3
        0xfe7e4 -> :sswitch_f4
        0xfe7e5 -> :sswitch_f5
        0xfe7e6 -> :sswitch_f6
        0xfe7e8 -> :sswitch_f7
        0xfe7e9 -> :sswitch_f8
        0xfe7ea -> :sswitch_f9
        0xfe7eb -> :sswitch_fa
        0xfe7ee -> :sswitch_fb
        0xfe7ef -> :sswitch_fc
        0xfe7f0 -> :sswitch_fd
        0xfe7f5 -> :sswitch_fe
        0xfe7f6 -> :sswitch_ff
        0xfe7f7 -> :sswitch_100
        0xfe7fa -> :sswitch_101
        0xfe7fc -> :sswitch_102
        0xfe7ff -> :sswitch_103
        0xfe800 -> :sswitch_104
        0xfe801 -> :sswitch_105
        0xfe802 -> :sswitch_106
        0xfe803 -> :sswitch_107
        0xfe804 -> :sswitch_108
        0xfe805 -> :sswitch_109
        0xfe806 -> :sswitch_10a
        0xfe807 -> :sswitch_10b
        0xfe808 -> :sswitch_10c
        0xfe809 -> :sswitch_10d
        0xfe80a -> :sswitch_10e
        0xfe813 -> :sswitch_10f
        0xfe814 -> :sswitch_110
        0xfe81a -> :sswitch_111
        0xfe81c -> :sswitch_112
        0xfe81d -> :sswitch_113
        0xfe81e -> :sswitch_114
        0xfe823 -> :sswitch_115
        0xfe824 -> :sswitch_116
        0xfe825 -> :sswitch_117
        0xfe826 -> :sswitch_118
        0xfe827 -> :sswitch_119
        0xfe829 -> :sswitch_11a
        0xfe82b -> :sswitch_11b
        0xfe82c -> :sswitch_11c
        0xfe82d -> :sswitch_11d
        0xfe82e -> :sswitch_11e
        0xfe82f -> :sswitch_11f
        0xfe830 -> :sswitch_120
        0xfe831 -> :sswitch_121
        0xfe832 -> :sswitch_122
        0xfe833 -> :sswitch_123
        0xfe834 -> :sswitch_124
        0xfe835 -> :sswitch_125
        0xfe836 -> :sswitch_126
        0xfe837 -> :sswitch_127
        0xfe960 -> :sswitch_128
        0xfe961 -> :sswitch_129
        0xfe962 -> :sswitch_12a
        0xfe963 -> :sswitch_12b
        0xfe964 -> :sswitch_12c
        0xfe96a -> :sswitch_12d
        0xfe973 -> :sswitch_12e
        0xfe980 -> :sswitch_12f
        0xfe981 -> :sswitch_130
        0xfe982 -> :sswitch_131
        0xfe983 -> :sswitch_132
        0xfe984 -> :sswitch_133
        0xfe985 -> :sswitch_134
        0xfe986 -> :sswitch_135
        0xfe987 -> :sswitch_136
        0xfe988 -> :sswitch_137
        0xfeaf0 -> :sswitch_138
        0xfeaf1 -> :sswitch_139
        0xfeaf2 -> :sswitch_13a
        0xfeaf3 -> :sswitch_13b
        0xfeaf4 -> :sswitch_13c
        0xfeaf5 -> :sswitch_13d
        0xfeaf6 -> :sswitch_13e
        0xfeaf7 -> :sswitch_13f
        0xfeb04 -> :sswitch_140
        0xfeb05 -> :sswitch_141
        0xfeb06 -> :sswitch_142
        0xfeb07 -> :sswitch_143
        0xfeb08 -> :sswitch_144
        0xfeb0b -> :sswitch_145
        0xfeb0c -> :sswitch_146
        0xfeb0d -> :sswitch_147
        0xfeb0e -> :sswitch_148
        0xfeb0f -> :sswitch_149
        0xfeb10 -> :sswitch_14a
        0xfeb11 -> :sswitch_14b
        0xfeb12 -> :sswitch_14c
        0xfeb13 -> :sswitch_14d
        0xfeb14 -> :sswitch_14e
        0xfeb15 -> :sswitch_14f
        0xfeb16 -> :sswitch_150
        0xfeb17 -> :sswitch_151
        0xfeb18 -> :sswitch_152
        0xfeb19 -> :sswitch_153
        0xfeb1a -> :sswitch_154
        0xfeb1b -> :sswitch_155
        0xfeb1c -> :sswitch_156
        0xfeb1d -> :sswitch_157
        0xfeb1e -> :sswitch_158
        0xfeb1f -> :sswitch_159
        0xfeb20 -> :sswitch_15a
        0xfeb21 -> :sswitch_15b
        0xfeb22 -> :sswitch_15c
        0xfeb23 -> :sswitch_15d
        0xfeb26 -> :sswitch_15e
        0xfeb27 -> :sswitch_15f
        0xfeb28 -> :sswitch_160
        0xfeb29 -> :sswitch_161
        0xfeb2a -> :sswitch_162
        0xfeb2b -> :sswitch_163
        0xfeb2c -> :sswitch_164
        0xfeb2d -> :sswitch_165
        0xfeb2e -> :sswitch_166
        0xfeb2f -> :sswitch_167
        0xfeb30 -> :sswitch_168
        0xfeb31 -> :sswitch_169
        0xfeb36 -> :sswitch_16a
        0xfeb44 -> :sswitch_16b
        0xfeb48 -> :sswitch_16c
        0xfeb55 -> :sswitch_16d
        0xfeb56 -> :sswitch_16e
        0xfeb57 -> :sswitch_16f
        0xfeb58 -> :sswitch_170
        0xfeb59 -> :sswitch_171
        0xfeb5a -> :sswitch_172
        0xfeb5b -> :sswitch_173
        0xfeb5c -> :sswitch_174
        0xfeb5d -> :sswitch_175
        0xfeb5f -> :sswitch_176
        0xfeb60 -> :sswitch_177
        0xfeb61 -> :sswitch_178
        0xfeb62 -> :sswitch_179
        0xfeb63 -> :sswitch_17a
        0xfeb64 -> :sswitch_17b
        0xfeb65 -> :sswitch_17c
        0xfeb66 -> :sswitch_17d
        0xfeb67 -> :sswitch_17e
        0xfeb77 -> :sswitch_17f
        0xfeb81 -> :sswitch_180
        0xfeb82 -> :sswitch_181
        0xfeb83 -> :sswitch_182
        0xfeb84 -> :sswitch_183
        0xfeb85 -> :sswitch_184
        0xfeb86 -> :sswitch_185
        0xfeb87 -> :sswitch_186
        0xfeb8a -> :sswitch_187
        0xfeb8d -> :sswitch_188
        0xfeb90 -> :sswitch_189
        0xfeb91 -> :sswitch_18a
        0xfeb92 -> :sswitch_18b
        0xfeb93 -> :sswitch_18c
        0xfeb94 -> :sswitch_18d
        0xfeb95 -> :sswitch_18e
        0xfeb96 -> :sswitch_18f
        0xfeb97 -> :sswitch_190
        0xfeb9d -> :sswitch_191
        0xfeb9f -> :sswitch_192
        0xfeba0 -> :sswitch_193
        0xfeba1 -> :sswitch_194
        0xfee10 -> :sswitch_195
        0xfee11 -> :sswitch_196
        0xfee12 -> :sswitch_197
        0xfee13 -> :sswitch_198
        0xfee14 -> :sswitch_199
        0xfee15 -> :sswitch_19a
        0xfee1c -> :sswitch_19b
    .end sparse-switch
.end method

.method protected static getQuoteColor(I)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 351
    packed-switch p0, :pswitch_data_0

    .line 363
    const-string v0, "#ccc"

    :goto_0
    return-object v0

    .line 353
    :pswitch_0
    const-string v0, "#729fcf"

    goto :goto_0

    .line 355
    :pswitch_1
    const-string v0, "#ad7fa8"

    goto :goto_0

    .line 357
    :pswitch_2
    const-string v0, "#8ae234"

    goto :goto_0

    .line 359
    :pswitch_3
    const-string v0, "#fcaf3e"

    goto :goto_0

    .line 361
    :pswitch_4
    const-string v0, "#e9b96e"

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static hasEmoji(Ljava/lang/String;)Z
    .locals 3
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 374
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 375
    .local v0, "c":C
    const v2, 0xdbb8

    if-lt v0, v2, :cond_0

    const v2, 0xdbbc

    if-ge v0, v2, :cond_0

    .line 376
    const/4 v2, 0x1

    .line 378
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 373
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v0    # "c":C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static htmlToSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 1315
    const/4 v0, 0x0

    new-instance v1, Lcom/fsck/k9/message/html/HtmlConverter$ListTagHandler;

    invoke-direct {v1}, Lcom/fsck/k9/message/html/HtmlConverter$ListTagHandler;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static htmlToText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 48
    new-instance v0, Lcom/fsck/k9/message/html/HtmlConverter$HtmlToTextTagHandler;

    invoke-direct {v0, v1}, Lcom/fsck/k9/message/html/HtmlConverter$HtmlToTextTagHandler;-><init>(Lcom/fsck/k9/message/html/HtmlConverter$1;)V

    invoke-static {p0, v1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0xfffc

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa0

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method private static htmlifyMessageFooter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1237
    const-string v0, "</pre>"

    return-object v0
.end method

.method private static htmlifyMessageHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1233
    const-string v0, "<pre class=\"k9mail\">"

    return-object v0
.end method

.method private static simpleTextToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x200

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlifyMessageHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 157
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 158
    .local v1, "c":C
    packed-switch v1, :pswitch_data_0

    .line 167
    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    :goto_1
    :pswitch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :pswitch_2
    const-string v3, "<br />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    .end local v1    # "c":C
    :cond_0
    invoke-static {}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlifyMessageFooter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 158
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static textToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/high16 v10, 0x40000

    if-le v9, v10, :cond_0

    .line 207
    invoke-static {p0}, Lcom/fsck/k9/message/html/HtmlConverter;->simpleTextToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 286
    .local v0, "buff":Ljava/lang/StringBuilder;
    .local v3, "index":I
    .local v4, "isStartOfLine":Z
    .local v5, "quoteDepth":I
    .local v6, "quotesThisLine":I
    .local v7, "sb":Ljava/lang/StringBuffer;
    .local v8, "spaces":I
    :goto_0
    return-object p0

    .line 209
    .end local v0    # "buff":Ljava/lang/StringBuilder;
    .end local v3    # "index":I
    .end local v4    # "isStartOfLine":Z
    .end local v5    # "quoteDepth":I
    .end local v6    # "quotesThisLine":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "spaces":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit16 v9, v9, 0x200

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 210
    .restart local v0    # "buff":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    .line 211
    .restart local v4    # "isStartOfLine":Z
    const/4 v8, 0x0

    .line 212
    .restart local v8    # "spaces":I
    const/4 v5, 0x0

    .line 213
    .restart local v5    # "quoteDepth":I
    const/4 v6, 0x0

    .line 214
    .restart local v6    # "quotesThisLine":I
    const/4 v3, 0x0

    .restart local v3    # "index":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 215
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 216
    .local v1, "c":C
    if-eqz v4, :cond_2

    .line 217
    sparse-switch v1, :sswitch_data_0

    .line 237
    const/4 v4, 0x0

    .line 239
    invoke-static {v0, v6, v5}, Lcom/fsck/k9/message/html/HtmlConverter;->appendbq(Ljava/lang/StringBuilder;II)V

    .line 240
    move v5, v6

    .line 242
    invoke-static {v0, v8}, Lcom/fsck/k9/message/html/HtmlConverter;->appendsp(Ljava/lang/StringBuilder;I)V

    .line 243
    const/4 v8, 0x0

    .line 245
    invoke-static {v0, v1}, Lcom/fsck/k9/message/html/HtmlConverter;->appendchar(Ljava/lang/StringBuilder;I)V

    .line 246
    const/4 v4, 0x0

    .line 214
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 219
    :sswitch_0
    add-int/lit8 v8, v8, 0x1

    .line 220
    goto :goto_2

    .line 222
    :sswitch_1
    add-int/lit8 v6, v6, 0x1

    .line 223
    const/4 v8, 0x0

    .line 224
    goto :goto_2

    .line 226
    :sswitch_2
    invoke-static {v0, v6, v5}, Lcom/fsck/k9/message/html/HtmlConverter;->appendbq(Ljava/lang/StringBuilder;II)V

    .line 227
    move v5, v6

    .line 229
    invoke-static {v0, v8}, Lcom/fsck/k9/message/html/HtmlConverter;->appendsp(Ljava/lang/StringBuilder;I)V

    .line 230
    const/4 v8, 0x0

    .line 232
    invoke-static {v0, v1}, Lcom/fsck/k9/message/html/HtmlConverter;->appendchar(Ljava/lang/StringBuilder;I)V

    .line 233
    const/4 v4, 0x1

    .line 234
    const/4 v6, 0x0

    .line 235
    goto :goto_2

    .line 251
    :cond_2
    invoke-static {v0, v1}, Lcom/fsck/k9/message/html/HtmlConverter;->appendchar(Ljava/lang/StringBuilder;I)V

    .line 252
    const/16 v9, 0xa

    if-ne v1, v9, :cond_1

    .line 253
    const/4 v4, 0x1

    .line 254
    const/4 v6, 0x0

    goto :goto_2

    .line 259
    .end local v1    # "c":C
    :cond_3
    if-lez v5, :cond_4

    .line 260
    move v2, v5

    .local v2, "i":I
    :goto_3
    if-lez v2, :cond_4

    .line 261
    const-string v9, "</blockquote>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 264
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 268
    const-string v9, "\\Q<br />\\E((\\Q<br />\\E)+?)\\Q</blockquote>\\E"

    const-string v10, "</blockquote>$1"

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 273
    const-string v9, "\\s*([-=_]{30,}+)\\s*"

    const-string v10, "<hr>"

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 275
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit16 v9, v9, 0x200

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 277
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlifyMessageHeader()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    invoke-static {p0, v7}, Lcom/fsck/k9/message/html/UriLinkifier;->linkifyText(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 279
    invoke-static {}, Lcom/fsck/k9/message/html/HtmlConverter;->htmlifyMessageFooter()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 284
    const-string v9, "<gt>"

    const-string v10, "&gt;"

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 286
    goto/16 :goto_0

    .line 217
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x20 -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static textToHtmlFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1293
    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, "htmlified":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0x200

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1297
    .local v1, "linkified":Ljava/lang/StringBuffer;
    invoke-static {v0, v1}, Lcom/fsck/k9/message/html/UriLinkifier;->linkifyText(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 1303
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r?\n"

    const-string v4, "<br>\r\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&apos;"

    const-string v4, "&#39;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static wrapMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "messageContent"    # Ljava/lang/CharSequence;

    .prologue
    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head><meta name=\"viewport\" content=\"width=device-width\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1247
    invoke-static {}, Lcom/fsck/k9/message/html/HtmlConverter;->cssStyleTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1248
    invoke-static {}, Lcom/fsck/k9/message/html/HtmlConverter;->cssStylePre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</head><body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1246
    return-object v0
.end method

.method public static wrapStatusMessage(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<div style=\"text-align:center; color: grey;\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/message/html/HtmlConverter;->wrapMessageContent(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
