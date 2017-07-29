.class Lcom/android/settings_ex/ad/c;
.super Ljava/lang/Object;
.source "AdServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ET:Lcom/android/settings_ex/ad/AdServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ad/AdServiceSettings;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings_ex/ad/c;->ET:Lcom/android/settings_ex/ad/AdServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 77
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 78
    return-void
.end method
