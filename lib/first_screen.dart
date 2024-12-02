import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_testpage/consts/app_colors.dart';
import 'package:flutter_testpage/consts/text_styles.dart';
import 'package:flutter_testpage/widgets/premium_subscription.dart';
import 'package:flutter_testpage/widgets/privacy.dart';
import 'package:flutter_testpage/widgets/subscription.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBackground,
      body: Stack(
        children: [
          Image.asset('assets/img/page_bg.jpg'),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 24),
                _pageTitle(),
                const SizedBox(height: 64),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      children: [
                        const SubscriptionCard(
                          duration: '1 месяц',
                          description: 'Описание',
                          price: '1000р',
                          isRecommended: true,
                        ),
                        const SizedBox(height: 38),
                        const PremiumSubscriptionCard(
                          duration: '6 месяц',
                          description: 'Описание',
                          currentPrice: '10 000р',
                          originalPrice: '12000р',
                          features: [
                            '•  что входит',
                            '•  что входит',
                            '•  что входит',
                            '•  что входит',
                            '•  что входит',
                          ],
                        ),
                        const SizedBox(height: 20),
                        _subscribeButton(),
                        const Spacer(),
                        const Privacy(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _subscribeButton() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: AppColors.primaryButtonGradient),
        borderRadius: BorderRadius.circular(29),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.all(16),
        ),
        child: const Text(
          'Купить',
          style: AppTextStyles.buttonTitle,
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              CupertinoIcons.left_chevron,
              size: 28,
              color: AppColors.pageBackArrow,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Text(
              textAlign: TextAlign.center,
              'Выберите подписку',
              style: AppTextStyles.pageTitle,
            ),
          ),
        ],
      ),
    );
  }
}
