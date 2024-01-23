import 'package:flutter/material.dart';
import 'package:flutter_application_1/globals/app_colors.dart';
import 'package:flutter_application_1/globals/app_text_styles.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Container(
            color: AppColors.bgColor,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: 'Profile'),
                ProfileContent(),
                SectionTitle(title: 'Education'),
                EducationContent(),
                SectionTitle(title: 'Competency'),
                CompetencyContent(),
                CompetencyContentSubText(),
                DatacollectionSub(),
                DatacollectionSubText(),
                DataAnalysis(),
                DataAnalysisText(),
                SectionTitle(title: 'Work Experience'),
                WorkExperienceContent(),
                SectionTitle(title: 'Personal Projects'),
                PersonalProjectsContent(),
                SectionTitle(title: 'Certifications'),
                CertificationsContent(),
                SectionTitle(title: 'References'),
                ReferencesContent(),
              ],
            ),
          ),
        ),
        Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 16.0,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Landing Page')))
      ],
    ));
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: AppTextStyles.attributeStyle(),
      ),
    );
  }
}

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Electrical Engineering graduate with a focus on Python development,\n'
      'cloud engineering, and machine learning. Adept at leveraging Python for intricate data analysis, automation,\n'
      'and machine learning applications. Experienced in hands-on roles like transformer\n'
      'assembly and renewable energy projects. Proficient in Python, Selenium,AutoCAD,\n'
      'MATLAB, Git, and cloud tools, I drive efficiency through data-driven insights obtained\n'
      'from technical audits. Positioned at the forefront of innovation in the energy sector,\n'
      'integrating Python, cloud, and machine learning for optimized and scalable solutions.',
      style: AppTextStyles.FinePrintStyle(),

      // Add your profile content here
    );
  }
}

class EducationContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Bsc. Electrical and Electronics Engineering. 2nd Class Honours University of Nairobi ',
      style: AppTextStyles.FinePrintStyle(),
      // Add your profile content here
    );
  }
}

class CompetencyContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Python Proficiency', style: AppTextStyles.attributeStyleSub(),

      // Add your profile content here
    );
  }
}

class CompetencyContentSubText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
        'Advanced skills in Python programming language, employed for data analysis,\n'
        'manipulation, and visualization, enhancing the efficiency of energy-related projects.\n'
        '\n'
        '\n'
        'Applied Python in automation processes, including PDF data extraction, showcasing \n'
        'the ability to streamline workflows and improve data management practices.\n'
        '\n'
        '\n'
        'Utilized Python for scripting and algorithm development in data analysis, modeling, and other technical aspects, contributing to the successful execution of projects.'
        '\n'
        '\n'
        'My proficiency in Python extends across various aspects of the energy sector, from\n'
        'data analysis and automation to scripting and algorithm development,\n'
        'demonstrating a versatile skill set in leveraging programming for enhanced project outcomes.',
        style: AppTextStyles.FinePrintStyle()
// Add your profile content here
        );
  }
}

class DatacollectionSub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Data Collection and Fieldwork', style: AppTextStyles.attributeStyleSub(),

      // Add your profile content here
    );
  }
}

class DatacollectionSubText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Enhanced expertise in data collection through \n'
      'extensive fieldwork, contributing to the accuracy and depth of data analysis.',
      style: AppTextStyles.FinePrintStyle(),

      // Add your profile content here
    );
  }
}

class DataAnalysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Data Analysis and Excel', style: AppTextStyles.attributeStyleSub(),

      // Add your profile content here
    );
  }
}

class DataAnalysisText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Skilled in data analysis, manipulation, and visualization\n'
      'using Excel and other data analysis tools.',
      style: AppTextStyles.FinePrintStyle(),

      // Add your profile content here
    );
  }
}

class WorkExperienceContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Work Experience',
          style: AppTextStyles.attributeStyle(),
        ),
        SizedBox(height: 8),
        Text(
          'ELECTRICAL ENGINEERING INTERN - ENERGY AND PETROLEUM REGULATORY AUTHORITY',
          style: AppTextStyles.attributeStyleSub(),
        ),
        Text(
          'April 2023 - October 2023',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 8),
        Text(
          'Key responsibilities:',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 4),
        Text(
          'Energy Audit Reviews: Energy Audit Reviews with Python Integration:',
          style: AppTextStyles.attributeStyleSub(),
        ),
        Text(
          '- Leveraged Python programming language and its associated tools for efficient data processing and analysis in energy audit reviews.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          '- Utilized Python libraries such as pandas and NumPy for data manipulation, enabling the extraction of meaningful insights from extensive datasets obtained during technical audits.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          '- Applied Python scripting to automate certain aspects of the energy consumption analysis, enhancing the speed and accuracy of the process.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          '- Integrated data visualization libraries, such as Matplotlib and Seaborn, to create clear and informative charts and graphs, aiding in the identification of consumption patterns and inefficiencies.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          '- Employed machine learning libraries in Python, when applicable, to develop predictive models that contribute to proactive energy management strategies.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'By integrating Python and its diverse tools into the energy audit process, I ensured a comprehensive and technologically advanced approach to analyzing data, deriving insights, and formulating recommendations for optimized energy management aligned with industry standards.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Automation(PDF extraction):',
          style: AppTextStyles.attributeStyle(),
        ),
        Text(
          'Proficient in automating processes, including PDF data extraction, to streamline workflow and enhance data management.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Enhanced Expertise in Data Collection Through Extensive Fieldwork:',
          style: AppTextStyles.attributeStyle(),
        ),
        Text(
          'Significantly improving my skills in data collection through active participation in extensive fieldwork activities.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Energy Regulations and Compliance:',
          style: AppTextStyles.attributeStyle(),
        ),
        Text(
          'Ensured strict adherence to renewable energy and electricity distribution regulations, maintaining industry-specific standards.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Technical Audits:',
          style: AppTextStyles.attributeStyle(),
        ),
        Text(
          'Conducted comprehensive technical audits of electrical distribution systems, identifying inefficiencies, safety concerns, and compliance issues, and provided actionable recommendations.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Renewable Energy Project Design:',
          style: AppTextStyles.attributeStyle(),
        ),
        Text(
          'Specialized in designing sustainable and efficient renewable energy projects (solar and wind systems), promoting environmental responsibility and energy sustainability.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Technical Standards Compliance:',
          style: AppTextStyles.attributeStyle(),
        ),
        Text(
          'Proficient in ensuring compliance with international and local technical standards, ensuring the quality and reliability of electrical projects.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Energy Management Policy Review:',
          style: AppTextStyles.attributeStyle(),
        ),
        Text(
          'Collaboratively reviewed and evaluated energy management policies, offering insights to enhance energy efficiency and sustainability.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Environmental Compliance:',
          style: AppTextStyles.attributeStyle(),
        ),
        Text(
          'Ensured strict adherence to environmental compliance standards and regulations in all projects, minimizing ecological impact.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'ELECTRICAL ENGINEERING ATTACHEE - COLENCO CONSULTING',
          style: AppTextStyles.attributeStyleSub(),
        ),
        Text(
          'June 2021 - August 2021',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 8),
        Text(
          'Key Responsibilities',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 4),
        Text(
          'Transformer Assembly: Participated in meticulous transformer assembly, involving vacuuming, heating, and precise filtration of transformer oil, ensuring optimal performance.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Safety and Equipment Integrity: Played a significant role in ensuring the safety and integrity of 66kV electrical equipment through vital earthing tasks.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Panel Support Structures: I was actively involved in the installation of critical panel support structures, enriching my understanding of structural aspects in electrical systems.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Practical Knowledge: Gained invaluable practical knowledge in electrical infrastructure, transformer assembly, safety protocols, and collaborative teamwork, contributing significantly to my professional growth in electrical engineering.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Power System Protection: Gained experience in power system protection, enhancing knowledge of electrical system safety.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Single Line Diagrams: Gained proficiency in representing electrical systems through single-line diagrams.',
          style: AppTextStyles.FinePrintStyle(),
        ),
      ],
    );
  }
}

class PersonalProjectsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Personal projects',
          style: AppTextStyles.attributeStyle(),
        ),
        SizedBox(height: 8),
        Text(
          'Whale Optimization Algorithm for Bandwidth Allocation in Telecommunication Network',
          style: AppTextStyles.attributeStyleSub(),
        ),
        Text(
          'Developed a Whale Optimization algorithm focusing on optimizing bandwidth allocation for telecommunication networks.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Implemented a Third Order R-L-C circuit excitation method to enhance algorithm performance.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Conducted a comparative analysis with other state-of-the-art optimization algorithms, demonstrating a 78% superior performance rate.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Utilized the algorithm to allocate bandwidth efficiently based on users\' power demands, ensuring optimal Quality of Service (QoS).',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'AutoML Project',
          style: AppTextStyles.attributeStyleSub(),
        ),
        Text(
          'Executed a comprehensive AutoML project using Streamlit for the user interface (UI) and Pandas Profiler for machine learning automation.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Designed a web application enabling users to upload datasets and select a target variable for prediction or classification.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Leveraged Pandas Profiler to generate comprehensive reports on data quality, distributions, correlations, and missing values.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Automated machine learning model selection and hyper-parameter tuning based on the generated reports.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Text-to-Speech Recognition for WhatsApp Voice Notes',
          style: AppTextStyles.attributeStyleSub(),
        ),
        Text(
          'Developed a text-to-speech recognition system that extracts audio from WhatsApp voice notes and transcribes them to text.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Utilized the AssemblyAI API to transcribe audio files obtained from user-input URLs.',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Created a user-friendly custom UI using Flet to display the transcribed text.',
          style: AppTextStyles.FinePrintStyle(),
        ),
      ],
    );
  }
}

class CertificationsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Certifications',
          style: AppTextStyles.attributeStyle(),
        ),
        SizedBox(height: 8),
        Text(
          'Associate Cloud Engineer - Google Cloud',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 8),
        Text(
          'ISO-Quality Management Systems',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 8),
        Text(
          'AWS Machine Learning Foundations',
          style: AppTextStyles.FinePrintStyle(),
        ),
      ],
    );
  }
}

class ReferencesContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'References',
          style: AppTextStyles.attributeStyle(),
        ),
        SizedBox(height: 8),
        Text(
          'Eng. Nickson Bukachi',
          style: AppTextStyles.attributeStyleSub(),
        ),
        Text(
          'Senior Renewable Energy Officer',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Mobile: +254-727-948168',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Email: nickson.bukachi@epra.go.ke',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Eng. Ignatius Chirchir',
          style: AppTextStyles.attributeStyleSub(),
        ),
        Text(
          'Energy Efficiency Officer',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Mobile: +254-712-178281',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Email: ignatius.chirchir@epra.go.ke',
          style: AppTextStyles.FinePrintStyle(),
        ),
        SizedBox(height: 16),
        Text(
          'Eng. Gideon Wambua',
          style: AppTextStyles.attributeStyleSub(),
        ),
        Text(
          'Chief Superintending Engineer',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Mobile: +254-722-893058',
          style: AppTextStyles.FinePrintStyle(),
        ),
        Text(
          'Email: gideon.mutisya@mtrd.go.ke',
          style: AppTextStyles.FinePrintStyle(),
        ),
      ],
    );
  }
}
